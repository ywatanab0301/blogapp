Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
