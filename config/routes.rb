Rails.application.routes.draw do
  devise_for :vendors
  resources :customers
end
