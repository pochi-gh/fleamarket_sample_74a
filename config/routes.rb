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
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'confirm'
      get 'bought'
    end
    resources :comments, only: [:create,:destroy, :edit, :update]
  end
  resources :users, only: [:show] do
    collection do
      get 'logout', to: 'users#logout'
      get 'purchase_item'
      get 'sell_item'
      get 'comment_item'
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
  resources :addresses, only: [:edit, :update]

  # resources :categories, only: [:index] do
  #   member do
  #     get 'parent'
  #     get 'child'
  #     get 'grandchild'
  #   end
  # end

end
