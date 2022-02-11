class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index edit update destroy]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
end
