Rails.application.routes.draw do
  get 'github/index'
  resources :projects
  resources :users
  root to: 'projects#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end