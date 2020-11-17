class Api::MoviegenresController < ApplicationController
  def create
    @movie_genre = Moviegenre.new({
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    })
    movie_genre.save
    render "show.json.jb"
  end
end
