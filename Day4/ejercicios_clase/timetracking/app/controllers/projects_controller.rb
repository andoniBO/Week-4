class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(100)
  end

  def show
    @project = Project.find_by(id: params[:id])
    unless @project
      render :no_projects_found
    end
  end

  def new
    @my_project = Project.new
  end

  def create
    @my_project = Project.new(
    name: params[:project][:name],
    description: params[:project][:description]
    )
    @my_project.save
    redirect_to "/projects"
  end
end
