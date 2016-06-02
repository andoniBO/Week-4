Rails.application.routes.draw do
#  get '/', to: 'site#home'
  get '/' => 'site#home'
  get '/contact/:email' => 'site#contact'
  get '/about_me' => 'site#about_me'
  get '/calculator' => 'site#calculator'

  post '/calculate' => 'site#calculate'
end
