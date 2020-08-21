class ItemsController < ApplicationController
  def index
  end
  
  def new
  end

  def show
    @item = Item.find(1)
    @seller = User.find(1)
    @images = Image.where(item_id: 1)
  end

  def confirm
  end


end
