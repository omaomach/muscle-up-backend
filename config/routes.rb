Rails.application.routes.draw do
  resources :machine_exercises
  resources :machines
  resources :diets
  resources :supplements
  resources :exercises
  resources :reviews
  resources :trainers
  resources :services
  resources :gyms
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get "/me", to: "clients#show"
  post "/signup", to: "clients#create"

  # get '/hello', to: 'application#hello_world'
end
