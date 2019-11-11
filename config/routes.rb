Rails.application.routes.draw do
  get "users/new"
  get "users/show"

  get "sessions/new"

  post "sessions/create"
  post "users/create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
