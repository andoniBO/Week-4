Rails.application.routes.draw do
#  get '/', to: 'site#home'
  get '/' => 'site#home', as: "root"
  get '/contact/:email' => 'site#contact'
  get '/about_me' => 'site#about_me'
  get '/calculator' => 'site#calculator'

  post '/calculate' => 'site#calculate'

  get '/projects', to: 'projects#index'
  get '/projects/new' => 'projects#new'
  get '/projects/:id' => 'projects#show'

  post '/projects' => 'projects#create'

  get '/projects/:project_id/time_entries' => 'time_entries#index'
  get '/projects/:project_id/time_entries/new' => 'time_entries#new'

  post '/projects/:project_id/time_entries' => 'time_entries#create', as: "project_time_entries"

end
