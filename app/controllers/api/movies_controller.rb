class Api::MoviesController < ApplicationController
  def show_movies_action
    @movies = Movie.all
    render "movies.json.jb"
  end

  def show_movie_action
    input_value = params["input"]
    @movie = Movie.find_by(id: input_value)
    render "movies.json.jb"
  end
end
