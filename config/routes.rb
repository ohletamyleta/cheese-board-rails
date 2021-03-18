Rails.application.routes.draw do
 
  root 'sessions#index'
 
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/logout' => 'sessions#destroy'

 get '/signup' => 'users#new'
 post '/signup' => 'users#create'
 
 get '/auth/:provider/callback' => 'sessions#omniauth'

 get '/reviews/top_cheeses' => 'reviews#top_cheeses'
 

 
  resources :reviews
  resources :styles
  resources :cheeses
  resources :users
  resources :wines
  resources :pairings

  resources :cheeses do
    resources :reviews, oknl: [:new, :index]
  end 

end
