class Api::ActorsController < ApplicationController
  def display_actor_action
    @actor = Actor.find_by(id: 6)
    render "actors.json.jb"
  end
end
