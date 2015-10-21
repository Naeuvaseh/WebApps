Rails.application.routes.draw do
  devise_for :users
  resources :accounts
  resources :users

  resource :users do
    resources :accounts, :name_prefix => 'user_'
  end
  resource :accounts do
    resources :transactions, :name_prefix => 'account_'
  end
  resources :transactions

  resources :categories
  resources :addresses

  authenticated :user do
    root to: 'users#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')

  match ':controller(/:action(/:id(.:format)))', :via => :get
  #root 'users#index'
end
