Rails.application.routes.draw do
  resources :accounts
  resources :customers
  resources :banks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "banks#index"
end
