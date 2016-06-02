class TimeEntriesController < ApplicationController
  def index
    @project = Project.find_by(id: params[:project_id])
    if @project == nil
      render :no_projects_found
    else
      @time_entries = @project.time_entries.where
    end
  end

  def new
    @project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.new
  end

  def create
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.create(
               hours: params[:time_entry][:hours]
               minutes: params[:time_entry][:minutes]
               comment: params[:time_entry][:comment]
               date: params[:time_entry][:date]
            )
    )
  end
end
