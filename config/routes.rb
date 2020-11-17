Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    post "/actors" => "actors#create"
    delete "/actors/:id" => "actors#destroy"

    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    post "/movies" => "movies#create"
    delete "/movies/:id" => "movies#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"
  end
end
