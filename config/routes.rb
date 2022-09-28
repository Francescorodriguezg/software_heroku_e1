Rails.application.routes.draw do
  devise_for :users
  root 'publications#index'
  get 'publications/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
