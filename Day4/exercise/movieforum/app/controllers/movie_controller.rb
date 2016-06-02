class MovieController < ApplicationController
  def index
    @movies = Movie.all
  end

  def make_search
    @movie = Movie.new
  end

  def search
    @movie = Movie.find_by(title: params[:title])
  end

  def show
    
  end

  def create
    # @movie = Movie.new(entry_params
    # if @movie.save
    #   redirect_to movies_path
    #   flash[:notice] = "Project created successfully"
    # else
    #   flash[:notice] = "Error"
    #   render "new"
    # end)
  end

  private

  def entry_params
    params.require(:movie).permit(:title, :poster, :year, :synopsis)
  end
end
