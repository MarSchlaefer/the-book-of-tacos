class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.valid?
      redirect_to @comment.post
    else
      flash[:error] = @comment.errors.full_messages
      redirect_to @comment.post
    end
  end

  def edit
  end

  def update
    @comment = Comment.update(comment_params)
    if @comment.valid?
      redirect_to @comment.post
    else
      flash[:error] = @comment.errors.full_messages
      redirect_to edit_comment_path
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    @post = @comment.post
    redirect_to @post
  end

  private

  def find_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

end
