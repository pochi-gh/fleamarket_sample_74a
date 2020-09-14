class CommentsController < ApplicationController
  before_action :set_categorys
  before_action :move_to_index_for_coment,only:[:edit, :update]
  def create
    comment = Comment.new(comment_params)
    if comment.valid?
      comment.save
      flash[:notice] = 'コメントしました。'
      redirect_to item_path(comment.item.id)
    else
      flash.now[:alert] = 'コメントを入力してください'
      @item = Item.find(params[:item_id])
      @seller = User.find(@item.seller_id)
      @comment = Comment.new
      @items = Item.where(category: @item.category_id).where.not(id: @item.id).order(created_at: :desc).limit(3)
      render template: 'items/show'
    end
  end

  def update
    comment = Comment.find(params[:id])
    if comment.update(comment_params)
      flash[:notice] = '更新が完了しました'
      redirect_to item_path(params[:item_id])
    else
      @item = Item.find(params[:item_id])
      @comment = Comment.find(params[:id])
      flash.now[:alert] = '更新できませんでした。コメントを入力してください。'
      render :edit
    end
  end

  def edit
    @item = Item.find(params[:item_id])
    @comment = Comment.find(params[:id])
  end

  def destroy
    comment= Comment.find(params[:id])
    comment.destroy
    redirect_to item_path(params[:item_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end
  
  def set_categorys
    @categories = Category.all  
  end

  def move_to_index_for_coment
    comment = Comment.find(params[:id])
    redirect_to items_path unless comment.user.id == current_user.id
  end

end
