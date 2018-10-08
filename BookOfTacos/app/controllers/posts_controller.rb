class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.search(params[:search])
    @users = User.all
    @recipes = Recipe.all

  end

  def show
    @comment = Comment.new
    @like = Like.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to @post
    else
      flash[:error] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit

  end

  def update
    @post.update(post_params)
    if @post.valid?
      redirect_to @post
    else
      flash[:error] = @post.errors.full_messages
      redirect_to edit_post_path
    end
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
    params.require(:post).permit(:title, :content, :comments, :user_id, :recipe_id, :search)
  end

end
