Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users

  resources :customers, only: [:new, :create, :show]

  resources :projects, only: [:new, :create]

  resources :tasks

end
