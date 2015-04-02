Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'

  resources :customers do
    resources :transactions
  end
  resources :currency_pairs
  resources :rates
  resources :currencies
  resources :cities
  resources :states
  resources :countries
  resources :users
  resources :sessions

  get 'chart', to: 'customers#chart', as: 'chart'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
