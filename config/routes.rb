Rails.application.routes.draw do
  root to: "customers#index"
  devise_for :vendors
  resources :customers
end
