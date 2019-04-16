Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index', as: 'home'
  resources :users
  resources :items, only: [:index, :show]
  resources :orders, only: [:index, :new, :create]
  resources :reviews, only: [:new, :create, :edit, :update]
end
