Rails.application.routes.draw do
  resources :orders
  resources :products
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'

  # get 'test', to: 'users#test'
  
end
