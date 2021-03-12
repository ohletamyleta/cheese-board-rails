Rails.application.routes.draw do
 
  root 'sessions#index'
 
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/logout' => 'sessions#destroy'

 get '/signup' => 'users#new'
 post '/signup' => 'users#create'
 
 
 
 
 
  resources :reviews
  resources :styles
  resources :cheeses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
