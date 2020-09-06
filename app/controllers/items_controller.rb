class ItemsController < ApplicationController
  def index
  end
  
  def new
  end

  def show
    @item = Item.find(params[:id])
    @seller = User.find(@item.seller_id)
    @images = @item.images
    @comment = Comment.new
    @items = Item.where(category: @item.category_id).where.not(id: @item.id).order(created_at: :desc).limit(3)
    @comments = @item.comments
  end

  def confirm
    @item = Item.find(params[:id])
    @image = Image.find(params[:id])
    @address = Address.where(user_id: current_user.id).first
  end


end
