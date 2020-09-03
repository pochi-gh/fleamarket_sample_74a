class ItemsController < ApplicationController
  before_action :set_category, only: [:parent, :child, :grandchild]


  def index
    @categories = Category.all  
  end
  
  def new
  end

  def show
  end

end
