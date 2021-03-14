Rails.application.routes.draw do
 
  resources :wines
  root 'sessions#index'
 
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/logout' => 'sessions#destroy'

 get '/signup' => 'users#new'
 post '/signup' => 'users#create'
 
 get '/auth/:provider/callback' => 'sessions#omniauth'
 
 
  resources :reviews
  resources :styles
  resources :cheeses
  resources :users
  resources :wines
  resources :pairings
  
end
