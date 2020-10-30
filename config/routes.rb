Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor_path" => "actors#display_actor_action"
    get "/movies_path" => "movies#show_movies_action"
    get "/movie_path" => "movies#show_movie_action"
  end
end
