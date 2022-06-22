Rails.application.routes.draw do
  resources :records
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :user 
  resources :record 
  
  root "records#index"
end
