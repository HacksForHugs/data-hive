class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @status = ResearchApplication.where(project_id: @project.id, user_id: current_user.id)
    @submittedapp = current_user.research_applications.where(project: @project, status: 2)
    @bookmarkedapp = current_user.research_applications.where(project: @project, status: 1)
  end

  def new
    @project = Project.new
    @tags = Tag.all
    @compensations = Project.compensations.keys
    @fields = Project.fields.keys
  end

  def create
    @project = Project.new(project_params)
    @project.positions = params[:positions]
    @project.questions = params[:questions]
    if @project.save
      @project.add_leader(@project, current_user)
      # @project.add_tags(@project, params[:skills])
      # @project.add_tags(@project, params[:courses])
      redirect_to @project
    else
      redirect_to action: 'new'
    end
  end

  def bookmark
    @project = Project.find(params[:project_id])
    ResearchApplication.create(project: @project, user: current_user, status: 1)
    redirect_to @project
  end

  def project_params
    params.require(:project).permit(:title, :subtitle, :startdate, :enddate, :app_deadline,
                                    :description, :hours_per_week, :compensation, :education_level, :field)
  end

  def accept
    project = Project.find(params[:id])
    accpeted_application_ids = params[:accpeted_application_ids]
    project.accept(accpeted_application_ids)
    redirect_to :back
  end

  def reject
    project = Project.find(params[:id])
    rejected_application_ids = params[:rejected_application_ids]
    project.reject(rejected_application_ids)
    redirect_to :back
  end
end
