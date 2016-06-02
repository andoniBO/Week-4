Rails.application.routes.draw do
#  get '/' => 'concerts#index'
#  get '/show/:id' => 'concerts#show'
#  get '/new' => 'concerts#new'

  get '/' => 'application#index'
  resources :concerts
  
end
