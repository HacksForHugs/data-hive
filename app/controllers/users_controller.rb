class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @research_applications = @user.research_applications
    @own_projects = @user.projects
  end

  def dashboard
    @bookmarkedapps = current_user.research_applications.where(status: 1)
    @submittedapps = current_user.research_applications.where(status: 2)
    @ownedprojectsapp = current_user.research_applications.where(status: 0)
  end
end
