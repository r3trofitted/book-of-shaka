class Characters::TrackDecreasesController < ApplicationController
  include CharacterScoped

  def create
    @character
      .decrement(params[:track])
      .save

    redirect_to @character
  end
end
