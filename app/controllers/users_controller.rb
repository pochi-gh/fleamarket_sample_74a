class UsersController < ApplicationController
  before_action :set_categorys

  def show
    @nickname = current_user.nickname
  end

  def edit
    @user = User.find(params[:id])
  end

  def personal_infomation
    @user = User.find(params[:id])
    @address = Address.find(params[:id])
  end

  def purchase_item
    @items = Item.where(buyer_id: current_user.id).page(params[:page]).per(10)
  end

  def sell_item
    @items = Item.where(seller_id: current_user.id).page(params[:page]).per(10)
  end

  def comment_item
    @comments = Comment.where(user_id: current_user.id).select(:item_id).distinct.page(params[:page]).per(10)
  end


  private
  def set_categorys
    @categories = Category.all  
  end

  
end
