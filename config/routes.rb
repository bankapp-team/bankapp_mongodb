Rails.application.routes.draw do
  devise_for :users
  resources :accounts
  resources :customers
  resources :banks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "banks#index"
end
