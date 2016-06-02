Rails.application.routes.draw do
  get '/' => 'site#home'
  get '/text_inspections/new' => 'text_inspections#new'
  get '/asciis/new' => 'asciis#new'

  post '/text_inspections' => 'text_inspections#create'
  post '/asciis' => 'asciis#create'
end
