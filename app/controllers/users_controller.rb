class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index edit update destroy]
  def new; end
end
