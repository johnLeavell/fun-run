Rails.application.routes.draw do
  resources :likes
  resources :user_runs
  resources :vendors
  resources :waivers
  resources :runs
  resources :shoes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
