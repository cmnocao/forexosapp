Rails.application.routes.draw do
  
  resources :currency_pairs

  resources :rates

  root 'home#index'

  resources :customers
  resources :currencies
  resources :cities
  resources :states
  resources :countries
  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
