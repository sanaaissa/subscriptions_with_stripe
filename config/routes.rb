Rails.application.routes.draw do
  resources :episodes
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
