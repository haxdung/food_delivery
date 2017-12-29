Rails.application.routes.draw do
  root "static_pages#home"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :foods
  resources :order_details
  resources :users
  resources :orders
  resources :account_activations
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :food_categories
  match "search(/:search)", :to => "static_pages#search", :as => :search, via: [:get, :post]
end
