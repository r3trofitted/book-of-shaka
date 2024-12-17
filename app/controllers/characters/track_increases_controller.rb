class Characters::TrackIncreasesController < ApplicationController
  before_action :set_character

  def create
    @character
      .increment(params[:track])
      .save

    redirect_to @character
  end

  private

  def set_character
    @character = Character.find params[:character_id]
  end
end
