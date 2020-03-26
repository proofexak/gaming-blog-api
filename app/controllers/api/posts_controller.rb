class Api::PostsController < ApplicationController
  before_action :authenticate_admin!, except: %w[index show]
  before_action :set_post, only: %w[show update]

  respond_to :json

  def index
    @posts = Post.all
    respond_with @posts
  end

  def create
    @post = Post.create(post_params)
    respond_with :api, @post
  end

  def show
    respond_with @post
  end

  def update
    @post.update(post_params)
    respond_with @post
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :content)
  end
end