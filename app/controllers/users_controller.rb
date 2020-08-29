class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname 
  end
  
  def purchase
    @items = Item.where(buyer_id: current_user.id).page(params[:page]).per(10)
    @images =Image.includes(:user)
  end
end
