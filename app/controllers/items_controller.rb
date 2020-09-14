class ItemsController < ApplicationController
  require "payjp"
  before_action :set_item, except: [:index, :new, :create, :get_category_children, :get_category_grandchildren]
  before_action :move_to_index, only:[:new,:create,:edit,:update,:confirm ]
  before_action :move_to_index_for_soldout, only: [:edit,:confirm,:bought]
  before_action :move_to_index_for_notseller, only: [:edit,:update]
  before_action :move_to_index_for_seller, only: [:confirm]
  before_action :set_category, only: [:parent, :child, :grandchild]
  #header用
  before_action :set_categorys, only: [:index, :show, :confirm]
  before_action :set_card, only: [:confirm, :bought]


  def index
    @items = Item.includes(:seller).order("created_at DESC").limit(4)
    @categories = Category.all
  end
  
  def new
    if user_signed_in?
    @item = Item.new
    @item.images.new
    @category_parent_array = Category.where(ancestry: nil).pluck(:name)
    @category_parent_array.unshift("---")
    else
      flash[:alert] = '出品するには、ログインするか新規会員登録をしてください。'
      redirect_to root_path
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      flash[:notice] = '出品が完了しました'
      redirect_to root_path
    else
      @category_parent_array = Category.where(ancestry: nil).pluck(:name)
      @category_parent_array.unshift("---")
      flash.now[:alert] = '必須項目を入力してください'
      @item = Item.new(item_params)
      @item.images.new
      render :new
    end
  end

  def edit
    edit_category
  end

  def update
    if item_params[:images_attributes].nil?
      flash.now[:alert] = '更新失敗しました。画像を登録してください。'
      edit_category
      render :edit
    else
      exit_ids = []
      item_params[:images_attributes].each do |a,b|
        exit_ids << item_params[:images_attributes].dig(:"#{a}",:id).to_i
      end
      ids = Image.where(item_id: params[:id]).map{|image| image.id }
      delete__db = ids - exit_ids
      Image.where(id:delete__db).destroy_all
      @item.touch
      if @item.update(item_params)
        flash[:notice] = '更新が完了しました'
        redirect_to item_path(@item.id)
      else
        set_item
        edit_category
        flash.now[:alert] = '更新できませんでした。必須項目を入力してください。'
        render :edit
      end
    end
  end


  def show
    @item = Item.find(params[:id])
    @seller = User.find(@item.seller_id)
    @comment = Comment.new
    @items = Item.where(category: @item.category_id).where.not(id: @item.id).order(created_at: :desc).limit(3)
  end

  def confirm
    @item = Item.find(params[:id])
    @image = Image.find_by(item_id: params[:id])
    @user = User.find(current_user.id)
    if @card
      Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def bought
    Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
    customer = Payjp::Customer.retrieve(@card.customer_id)
    charge = Payjp::Charge.create(
      amount: @item.price,
      customer: Payjp::Customer.retrieve(@card.customer_id),
      currency: 'jpy'
    )
    @item_buyer = Item.find(params[:id])
    @item_buyer.update(buyer_id: current_user.id)
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end
  
  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end



  def edit_category
    grandchild_category = @item.category
    child_category = grandchild_category.parent

    @category_parent_array = Category.where(ancestry: nil).pluck(:name)
    @category_children_array =  Category.where(ancestry: child_category.ancestry)
    @category_grandchildren_array =  Category.where(ancestry: grandchild_category.ancestry)

  end

  private

  def item_params
    params.require(:item).permit(:name, :explain, :brand, :state_id, :shipping_burden_id, :prefecture_id, :category_id, :shipping_day_id, :price, images_attributes:[:src, :_destroy, :id]).merge(seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_categorys
    @categories = Category.all  
  end
  
  def set_card
    @card = CreditCard.find_by(user_id: current_user.id)
  end


  def move_to_index_for_soldout
    item = Item.find(params[:id])
    redirect_to action: :index if item.buyer_id.present?
  end

  def move_to_index_for_notseller
    item = Item.find(params[:id])
    redirect_to action: :index unless item.seller_id == current_user.id
  end
  def move_to_index_for_seller
    item = Item.find(params[:id])
    redirect_to action: :index if item.seller_id== current_user.id
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
