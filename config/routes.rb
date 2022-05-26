Rails.application.routes.draw do
  devise_for :users, :controller => {registration: "registration"}
  #resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create, :index]
  # Defines the root path route ("/")
  root "posts#index"
end
