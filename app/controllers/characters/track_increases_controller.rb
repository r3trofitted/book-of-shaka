class Characters::TrackIncreasesController < ApplicationController
  include CharacterScoped

  def create
    @character
      .increment(params[:track])
      .save

    redirect_to @character
  end
end
