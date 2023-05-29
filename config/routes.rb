Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/update'
  
  get 'users/destroy'
  get 'users/index'
  get 'users/show'
  get 'loads/index'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :kaderes
  resources :carriers
  resources :loads
  resources :users
  get 'home/index'
  get 'home/index2'
  get 'home/about'
  get 'home/login'

  get '/search',to: "home#search"

   
  

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
