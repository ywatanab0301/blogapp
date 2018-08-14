Rails.application.routes.draw do
  root 'articles#index'
  resouces :articles, only: [:index, :new]
end
