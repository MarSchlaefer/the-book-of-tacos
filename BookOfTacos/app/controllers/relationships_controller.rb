class RelationshipsController < ApplicationController

  def create
    @user = User.find_by(id: params[:id])
    following = User.find(params[:followed_id])
    @user.follow(following)
    redirect_to @user
  end

  def destroy
    following = Relationship.find(params[:id]).followed
    @user.unfollow(following)
    redirect_to following
  end

end
