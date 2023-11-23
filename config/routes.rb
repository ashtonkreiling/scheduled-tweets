Rails.application.routes.draw do
  # <HTML verb> <endpoint>, to: <controller#method>, as: <internal route name>
  get "/about", to: "about#index", as: :about
  # root = get "/",
  root to: "main#index"

  # get routes display an HTML page
  get "/password" to: "passwords#edit"
  patch "/password" to: "passwords#update"
  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"
  delete "/logout", to: "sessions#destroy"
  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"
end
