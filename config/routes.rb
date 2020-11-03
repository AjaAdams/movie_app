Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # get "/actor_path" => "actors#display_actor_action"
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    get "/movies/:id" => "movies#update"
    post "/movies" => "movies#create"
    delete "/movies/:id" => "movies#destroy"
  end
end
