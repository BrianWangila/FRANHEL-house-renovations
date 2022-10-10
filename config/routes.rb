Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "signup", to: "users#create"

  post "login", to: "sessions#create"
  delete "logout", to: "sessions#delete"
end
