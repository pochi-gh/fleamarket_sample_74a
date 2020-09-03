class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname 
  end
  def purchase_item
    @items = Item.where(buyer_id: current_user.id).page(params[:page]).per(10)
  end

  def sell_item
    @items = Item.where(seller_id: current_user.id).page(params[:page]).per(10)
  end

end
