Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/decks" => "decks#index"
  post "/decks" => "decks#create"
  get "/decks/:id" => "decks#show"
  patch "/decks/:id" => "decks#update"
  delete "/decks/:id" => "decks#destroy"

  get "/cards" => "cards#index"
  post "/cards" => "cards#create"
  delete "/cards/:id" => "cards#destroy"
  patch "/cards/:id" => "cards#update"
  get "/cards/:id" => "cards#show"

  post "/card_decks" => "card_decks#create"
  get "/card_decks" => "card_decks#index"
end
