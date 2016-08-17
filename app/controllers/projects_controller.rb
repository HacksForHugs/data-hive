class ProjectsController < ApplicationController

  def index
    @projects = Project.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @project = Project.find(params[:id])
    @status = ResearchApplication.where(project_id: @project.id, user_id: current_user.id)
  end

  def new
    @project = Project.new
    @tags = Tag.all
    @education_levels = Project.education_levels.keys
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

  def project_params
    params.require(:project).permit(:title, :subtitle, :startdate, :enddate, :app_deadline,
                                    :description, :hours_per_week, :compensation, :education_level, :field)
  end
end
