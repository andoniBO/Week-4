class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(100)
  end
end
