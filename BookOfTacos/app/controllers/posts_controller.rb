class PostsController < ApplicationController
  before_action :find_post, only: [:show, :create, :edit, :update]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to @post
  end

  def edit

  end

  def update
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :comments, :user_id)
  end
end
