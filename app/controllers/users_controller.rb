class UsersController < ApplicationController

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to crop_users_path
    else
      render action: 'new'
    end
  end

  def crop
    @user = User.first
  end

  def update
    @user = User.first
    @user.crop_x = params[:user]["crop_x"]
    @user.crop_y = params[:user]["crop_y"]
    @user.crop_h = params[:user]["crop_h"]
    @user.crop_w = params[:user]["crop_w"]
    @user.save
    redirect_to user_path(@user)
  end

  def crop_update
    @user = User.first
    @user.crop_x = params[:user]["crop_x"]
    @user.crop_y = params[:user]["crop_y"]
    @user.crop_h = params[:user]["crop_h"]
    @user.crop_w = params[:user]["crop_w"]
    @user.save
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :avatar)
  end

end