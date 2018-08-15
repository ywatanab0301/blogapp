Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles, only: [:index, :new, :create, :edit]
  resources :users, only: [:show]
end
