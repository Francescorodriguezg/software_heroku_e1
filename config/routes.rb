Rails.application.routes.draw do
  devise_for :users
  root 'publications#index'
  get 'publications/new', to: 'publications#new', as: 'new_publication'
  post 'publications/post', to: 'publications#create', as: 'create_publication'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end