Rails.application.routes.draw do

  scope :api do
    resources :orders
    resources :products
    resources :users, only: [:create]
    resources :sessions, only: [:create, :destroy]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  post 'auth/register', to: 'users#create'
  post 'auth/login', to: 'sessions#create'
  delete 'auth/logout', to: 'sessions#destroy'
  
end
