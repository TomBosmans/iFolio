Rails.application.routes.draw do
  resources :articles
  
  get 'main/index'
  root "articles#index"
end
