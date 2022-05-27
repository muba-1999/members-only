Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations"}
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  #resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create, :index, :show, :edit]
  # Defines the root path route ("/")
  root "posts#index"
end
