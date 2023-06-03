Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'

  resources :users
  resources :trips
  resources :buses
  resources :tickets
  resources :buys

  resource :logins

  get 'login', to: 'logins#new', as: :login
  post 'login', to: 'logins#create'
  post 'logout', to: 'logins#destroy', as: :logout

  get 'register', to: 'user_registrations#new'
  post 'register/user', to: 'user_registrations#create'
  resources :user_registrations, only: %i[new create destroy]
end
