class ProjectsController < ApplicationController

  # GET /projects
  def index
    @projects = Project.normal.page(params[:page]).per(15)
  end

  # GET /projects/:id
  def show
    @project = Project.find params[:id]
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # POST /projects
  def create
    @project = Project.new Project
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  # GET /projects/:id/edit
  def edit
    @project = Project.find params[:id]
  end

  # PATCH /projects/:id
  def update
    @project = Project.find params[:id]
    if @project.update project_param
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private
  def project_param
    params.require(:project).permit(:title, :description, :archived)
  end
end
