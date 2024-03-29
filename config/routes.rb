Rails.application.routes.draw do
  resources :likes, only: %i[create destroy]
  resources :friend_request
  resources :comments
  resources :posts
  resources :bios
  get "/", to: "home#index"
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "home#index"
end
