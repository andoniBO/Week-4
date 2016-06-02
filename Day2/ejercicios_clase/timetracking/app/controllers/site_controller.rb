class SiteController < ApplicationController
  def home
    render 'home',layout: 'landing' #name of the view template
  end

  def about_me
    #render 'about_me'
  end

  def contact
    @name = params["email"]
  end

  def calculator
    #opcion 1(si se llaman igual(en este caso calculator) es dejarlo en blanco)
    #opcion 2
    #render :calculator
    #opcion 3
    render 'calculator'
  end

  def calculate
    @result = params["first_num"].to_f + params["second_num"].to_f
    render 'calculate'
  end
end
