Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :records
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  
  root "projects#index"
  post "records/:id" => "records#update#id"

end
