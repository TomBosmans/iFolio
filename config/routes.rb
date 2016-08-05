Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :articles
  
  get 'main/index'
  root "articles#index"
end
