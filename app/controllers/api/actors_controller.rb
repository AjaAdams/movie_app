class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    input_value = params[:id]
    @actor = Actor.find_by(id: input_value)
    render "show.json.jb"
  end

  def create
    @actor = Actor.new ({
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      age: params[:age],
      gender: params[:gender],
    })
    @actor.save
    render "show.json.jb"
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] || @actor.gender
    render "show.json.jb"
  end

  def destroy
    input_value = params[:id]
    @actor = Actor.find_by(id: input_value)
    @actor.destroy
    render json: { message: "Record was successfully deleted!" }
  end
end
