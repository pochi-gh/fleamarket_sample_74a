class ItemsController < ApplicationController
  def index
  end
  
  def new
  end

  def show
    @item = Item.find(1)
    @seller = User.find(1)
    @images = Image.where(item_id: 1)
    @comment = Comment.new
    @comments = @item.comments
  end

  def confirm
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
    @address = Address.where(user_id: current_user.id).first
  end


end
