Rails.application.routes.draw do
  resources :accounts
  resources :customers
  resources :bank_branches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "bank_branches#index"
end
