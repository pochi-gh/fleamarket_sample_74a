Rails.application.routes.draw do
  root 'items#index'
  resources :item_sell, only: :new
end
