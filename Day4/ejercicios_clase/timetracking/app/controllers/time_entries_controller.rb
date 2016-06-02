class TimeEntriesController < ApplicationController
  before_action :set_project
  def index
    #@project = Project.find_by(id: params[:project_id])
    if @project == nil
      render :no_projects_found
    else
      @time_entries = @project.time_entries.all
    end
  end

  def new
    #@project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.new
  end

  def create
    #@project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.new(entry_params)
    if @time_entry.save
      redirect_to project_time_entries_path(@project)
      flash[:notice] = "Project created successfully"
    else
      flash[:notice] = "Error"
      render "new"
    end
  end

  def edit
    #@project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.find(params[:id])
  end

  def update
    #@project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.find(params[:id])
    if @time_entry.update(entry_params)
      redirect_to "/projects/#{@project.id}/time_entries/"
    else
      render "edit"
    end
  end

  def destroy
    time_entry = @project.time_entries.find_by(id: params[:id])
    time_entry.destroy
    redirect_to project_time_entries_path(@project)
  end

  private

  def entry_params
    params.require(:time_entry).permit(:hours, :minutes, :comment, :date)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end
end
