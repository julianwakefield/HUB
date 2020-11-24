Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:destroy]
  resources :games do
    resources :posts, only: [:new, :create, :update, :edit]
    # resources :reviews, only: [:create]
  end
end
