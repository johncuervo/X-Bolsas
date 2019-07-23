Rails.application.routes.draw do
  root to: "orders#index"
  devise_for :vendors
  resources :customers
  resources :products
  resources :orders
end
