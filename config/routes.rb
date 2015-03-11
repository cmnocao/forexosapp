Rails.application.routes.draw do
  resources :currencies

  resources :cities

  resources :states

  resources :countries

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  root 'home#index'
  
end
