class LikesController < ApplicationController


  def create
    @like = Like.create(like_params)
  end

  def destroy
    @like = Like.find_by(id: params[:id])
    @like.destroy
    redirect_to post_path(@post)
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
  
end
