## Redundant: see projects_controller

class ProjectController < ApplicationController
  def index
    owner = User.find(params[:user_id])
    @owned_projects = owner.projects
  end

  def show
    project = Project.find(params[:id])
    @applications = project.applications
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
