Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items do
    member do
      get 'confirm'
    end
  end
  resources :user, only: [:show] do
    collection do
      get 'logout', to: 'user#logout'
    end
  end
  resources :credit_cards, only: [:index, :new, :show] do
    collection do
      post 'pay', to: 'credit_cards#pay'
      post 'delete', to: 'credit_cards#delete'
      post 'show', to: 'credit_cards#show'
    end
  end
  resources :item_sell, only: :new
end
