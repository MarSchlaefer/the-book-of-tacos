class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized, only: [:new, :create]

  def index
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    if @user.valid?
      @user.picture = "/assets/images/pepes/pepe#{rand(1..8)}.jpg"
      @user.save
      redirect_to @user
    else
      flash[:error] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to new_user_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
