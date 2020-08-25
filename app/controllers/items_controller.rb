class ItemsController < ApplicationController
  def index
  end
  
  def new
    if user_signed_in?
    @item = Item.new
    @category_parent_array = Category.where(ancestry: nil)
    else
      redirect_to root_path, notice: 'ログインもしくは新規会員登録をしてください。'
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


end
