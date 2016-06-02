class ConcertsController < ApplicationController
  def index
    #@concerts = Concert.all.order("date ASC")
    @concerts = Concert.where(date: Date.today.end_of_day .. (Date.today.end_of_day + 1.month)).order("date ASC")
    @today_concerts = Concert.where(date: Date.today.beginning_of_day .. Date.today.end_of_day)
  #  binding.pry
  end

  def show
    @concert = Concert.find(params[:id])
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new concert_params
    if @concert.save
      redirect_to concerts_path
    else
      render :new
    end
  end

  private
  def concert_params
    params.require(:concert).permit(:artist,:venue,:city,:date,:price,:description)
  end
end
