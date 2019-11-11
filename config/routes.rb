Rails.application.routes.draw do
  get "users/new"
  get "users/", to: "users#show"

  get "sessions/new"

  post "sessions/create"
  post "users/", to: "users#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
