Rails.application.routes.draw do
  get 'credit_cards/index'
  get 'credit_cards/new'
  get 'credit_cards/show'
  devise_for :users
  root 'items#index'
  resources :items, only: [:index]
  resources :user, only: [:show]
  resources :credit_cards, only: [:index, :new, :show] do
    collection do
      post 'pay', to: 'credit_cards#pay'
      post 'delete', to: 'credit_cards#delete'
      post 'show', to: 'credit_cards#show'
    end
  end
end
