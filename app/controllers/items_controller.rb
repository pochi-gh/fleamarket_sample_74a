class ItemsController < ApplicationController
  before_action :set_item, except: [:index, :new, :create]

  def index
  end
  
  def new
    if user_signed_in?
    @item = Item.new
    @item.images.new
    @category_parent_array = ["---"]
      Category.where(ancestry: nil).each do |parent|
        @category_parent_array << parent.name
      end
    else
      flash[:alert] = '出品するには、ログインするか新規会員登録をしてください。'
      redirect_to root_path
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
    else
      redirect_to new_item_path, flash: { error: @item.errors.full_messages }
    end
  end

  def show
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end
  
  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  private

  def item_params
    params.require(:item).permit(:name, :explain,:category_id, :brand, :state_id, :shipping_burden_id, :prefecture_id, :shipping_day_id, :price).merge(seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
