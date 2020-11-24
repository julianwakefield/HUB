Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:destroy]
  resources :games do
    resources :posts, only: [:new, :create, :update, :edit] do
     resources :comments, only: [:create, :update, :destroy]
    end
  end

  # resources :users, only: [:show]
  get '/dashboard', to: 'pages#dashboard'
end
