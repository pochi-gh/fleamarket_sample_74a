class ItemsController < ApplicationController

  before_action :set_item, except: [:index, :new, :create, :get_category_children, :get_category_grandchildren]

  before_action :set_category, only: [:parent, :child, :grandchild]
  #header用
  before_action :set_categorys, only: [:index, :show, :confirm]

  def index
    
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
      render :new
      @item = Item.new(item_params)
      @item.images.new
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
    @image = Image.find(params[:id])
    @user = User.find(current_user.id)
    @card = CreditCard.find_by(user_id: current_user.id)
    binding.pry
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end
  
  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  private

  def item_params
    params.require(:item).permit(:name, :explain, :brand, :state_id, :shipping_burden_id, :prefecture_id, :shipping_day_id, :price, images_attributes:[:src, :_destroy, :id]).merge(category_id: params[:category_id] ,seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_categorys
    @categories = Category.all  
  end


end
