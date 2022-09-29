Rails.application.routes.draw do
  resources :responses
  root 'publications#index'
  devise_for :users
  resources :pivots
  resources :messages
  resources :publications
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
