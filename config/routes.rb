Rails.application.routes.draw do
  #root to: 'tasks#index'
  
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'tasks#index'


  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]

  resources :tasks
end