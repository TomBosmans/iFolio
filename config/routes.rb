Rails.application.routes.draw do
  resources :categories
  resources :articles
  
  get 'main/index'
  root "articles#index"
end
