Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root 'items#index'
  resources :items do
    member do
      get 'confirm'
      get 'sell_confirm', to: 'items/sell_comfirm'
    end
  end
  resources :users, only: [:show] do
    collection do
      get 'logout', to: 'users#logout'
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
