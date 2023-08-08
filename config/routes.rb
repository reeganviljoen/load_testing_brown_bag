Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :info, only: [:index]
  root to: 'items#index'
end
