class ItemsController < ApplicationController
  before_action :set_item, except: [:index, :new, :create]

  def index
  end
  
  def new
    if user_signed_in?
    @item = Item.new
    @item.images.new
    @category_parent_array = Category.where(ancestry: nil)
    else
      flash[:alert] = '出品するには、ログインするか新規会員登録をしてください。'
      redirect_to root_path
      
    end
  end

  def create
    binding.pry
  end

  def show
  end

  private

  def item_params
    params.require(:item).permit(:name, :explain,:category_id, :brand, :state_id, :shipping_burden_id, :prefecture_id, :shipping_day_id, :price).merge(seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
