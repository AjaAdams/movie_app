class Api::MoviesController < ApplicationController
  def show_movies_action
    @movies = Movie.all
    render "movies.json.jb"
  end

  def show
    input_value = params["input"]
    @movie = Movie.find_by(id: input_value)
    render "show.json.jb"
  end
end
