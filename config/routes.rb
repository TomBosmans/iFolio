Rails.application.routes.draw do
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  resources :categories
  resources :articles
  
  get 'main/index'
  root "articles#index"
end
