class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/items/#{comment.item.id}"
  end

  def edit
    @item = Item.find(params[:item_id])
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to "/items/#{params[:item_id]}"
  end

  def destroy
    comment= Comment.find(params[:id])
    comment.destroy
    redirect_to "/items/#{params[:item_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  
end
