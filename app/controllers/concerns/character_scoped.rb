module CharacterScoped extend ActiveSupport::Concern
  included do
    before_action :set_character
  end

  private

  def set_character
    @character = Character.find params[:character_id]
  end
end
