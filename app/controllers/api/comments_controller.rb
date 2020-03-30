class Api::CommentsController < ApplicationController
  respond_to :json

  def index
    @comments = Comment.where(post_id: params[:post_id])
    respond_with @comments
  end

  def create
    @comment = Comment.create(comment_params)
    respond_with :api, @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:nickname, :content, :post_id)
  end
end