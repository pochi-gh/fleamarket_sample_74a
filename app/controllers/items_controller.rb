class ItemsController < ApplicationController
  def index
  end
  
  def new
  end

  def show
    @item = Item.find(2)
    @seller = User.find(1)
    @images = Image.where(item_id: 2)
    @comment = Comment.new
    @comments = @item.comments
  end

  def confirm
  end


end
