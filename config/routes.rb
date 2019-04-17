Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#home'

  get '/items/BnB', to: 'items#index_BnB', as: 'BnB_items'
  get '/items/store', to: 'items#index_store', as: 'store_items'
  resources :users, except: :index
  resources :items, only: :show do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  resources :orders, only: [:index, :new, :create]
  resources :order_items
  resource :cart, only: [:show] do
    get '/confirmation', to: 'carts#confirmation', as: 'confirmation'
  end

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  get '/about', to: 'about#about', as: 'about'
end
