Rails.application.routes.draw do
 
  resources :wines
  root 'sessions#index'
 
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 delete '/logout' => 'sessions#destroy'

 get '/signup' => 'users#new'
 post '/signup' => 'users#create'
 
 
 
  resources :reviews
  resources :styles
  resources :cheeses
  resources :users
  
end
