Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:show]
end
