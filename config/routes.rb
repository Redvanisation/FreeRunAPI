Rails.application.routes.draw do

  scope :api do
    resources :orders
    resources :products
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  
end
