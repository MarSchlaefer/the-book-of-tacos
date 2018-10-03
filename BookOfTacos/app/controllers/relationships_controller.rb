class RelationshipsController < ApplicationController

  def create
    following = User.find(params[:followed_id])
    relationship = current_user.follow(following)
    redirect_to following
  end

  def destroy
    following = Relationship.find(params[:id]).followed
    current_user.unfollow(following)
    redirect_to following
  end

end
