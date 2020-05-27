Rails.application.routes.draw do
  resources :movies
  resources :favorites
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "users#login"
  delete "/favorites", to: "favorites#destroy"

  # This route is to activate the token authentication 
  get "/login", to: "users#token_authenticate"
end
