Rails.application.routes.draw do
  resources :favorites
  resources :recipes
  resources :comments
  resources :users
end
