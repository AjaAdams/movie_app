class Api::MoviesController < ApplicationController
  def show_movies_action
    @movies = Movie.all
    render "movies.json.jb"
  end

  def show_movie_action
    @movie = Movie.find_by(id: 2)
    render "movies.json.jb"
  end
end

#trying to fix git
