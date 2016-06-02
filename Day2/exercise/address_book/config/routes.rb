Rails.application.routes.draw do
  get '/' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  get '/contacts' => 'contacts#index'
  get '/show/:id' => 'contacts#show'
  get '/favorites' => 'contacts#showfavorites'

  post '/favorites/:id' => 'contacts#favorites'
  post '/contacts' => 'contacts#create'
  post '/search' => 'contacts#search'
end
