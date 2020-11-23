Rails.application.routes.draw do
  resources :favorites
  resources :recipes
  resources :comments
  resources :users

  # post '/login', to: 'users#login'
  # get '/profile', to: 'users#profile'
end
