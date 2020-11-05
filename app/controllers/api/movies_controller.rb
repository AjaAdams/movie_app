class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    input_value = params[:id]
    @movie = Movie.find_by(id: input_value)
    render "show.json.jb"
  end

  def create
    @movie = Movie.new({
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    })
    @movie.save
    render "show.json.jb"
  end

  def update
    input_value = params[:id]
    @movie = Movie.find_by(id: input_value)
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.english = params[:english] || @movie.english
    @movie.director = params[:director] || @movie.director
    @movie.save
    render "show.json.jb"
  end

  def destroy
    input_value = params[:id]
    @movie = Movie.find_by(id: input_value)
    @movie.destroy
    render json: { message: "Record was successfully deleted!" }
  end
end
