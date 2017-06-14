Rails.application.routes.draw do
  resources :users

  get 'welcome/show'
  root 'welcome#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #
  # get '/users' => 'users#new'
  # post '/users' => 'users#create'
  # get '/success' => 'users#welcome'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'

end
