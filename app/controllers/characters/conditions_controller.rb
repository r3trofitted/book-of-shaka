class Characters::ConditionsController < ApplicationController
  before_action :set_character

  def toggle
    condition = params[:condition].to_sym

    if condition.in? %i(sleepless thirsty hungry cold)
      @character.toggle! condition
      redirect_to @character
    else
      head :bad_request
    end
  end

  private

  def set_character
    @character = Character.find params[:character_id]
  end
end
