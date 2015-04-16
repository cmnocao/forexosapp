Rails.application.routes.draw do
  
  root 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :customers do
    resources :transactions, only: [:new, :create]
  end
  resources :transactions, only: [:show, :index, :edit, :update]
  
  resources :currency_pairs
  resources :rates
  resources :currencies
  resources :cities
  resources :states
  resources :countries
  resources :users
  resources :sessions

  get 'till', to: 'till#index', as: 'till'
  get 'chart', to: 'customers#chart', as: 'chart'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
