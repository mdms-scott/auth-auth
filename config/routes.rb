Rails.application.routes.draw do
  root 'items#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'customers#new'
  post '/customers' => 'customers#create'
end
