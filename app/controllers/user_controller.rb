class UserController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @applications = @user.applications
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
