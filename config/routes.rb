Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#home'
  resources :users, except: :index
  resources :items, only: [:index, :show]
  resources :orders, only: [:index, :new, :create]
  resources :reviews, only: [:new, :create, :edit, :update]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  get '/about', to: 'about#about', as: 'about'
end
