Rails.application.routes.draw do
  # <HTML verb> <endpoint>, to: <controller#method>, as: <internal route name>
  get "/about", to: "about#index", as: :about
  # root = get "/",
  root to: "main#index"
end
