Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:destroy]
  resources :comments, only: [:destroy]
  resources :user_games, only: [:destroy]
  resources :chats, only: [:show] do
    resources :messages, only: [:create]
  end
  
  post '/add-friends', to: 'users#add_friends'
  post '/remove-friends', to: 'users#remove_friends'

  resources :games do
    resources :user_games, only: [:create]
    resources :posts, only: [:new, :create, :update, :edit] do
      resources :comments, only: [:new, :create, :update]
    end
  end
  
  resources :users, only: [:show, :index] do 
    resources :posts, only: [:new, :create, :update, :edit] do
      resources :comments, only: [:new, :create, :update]
    end 
  end
  get '/dashboard', to: 'pages#dashboard'

end
