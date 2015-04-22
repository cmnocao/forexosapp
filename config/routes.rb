Rails.application.routes.draw do
  
  root 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  with_options except: :destroy do |o|
    o.resources :customers do
      o.resources :transactions, only: [:new, :create]
    end
    o.resources :transactions, only: [:show, :index, :edit, :update]
    o.resources :currency_pairs
    o.resources :rates
    o.resources :currencies
    o.resources :cities
    o.resources :states
    o.resources :countries
    o.resources :users
    o.resources :sessions
  end

  get 'till', to: 'till#index', as: 'till'
  get 'chart', to: 'customers#chart', as: 'chart'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
