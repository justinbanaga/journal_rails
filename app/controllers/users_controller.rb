class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index edit update destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the Journal App!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
