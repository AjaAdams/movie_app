class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    input_value = params["input"]
    @movie = Movie.find_by(id: input_value)
    render "show.json.jb"
  end
end
