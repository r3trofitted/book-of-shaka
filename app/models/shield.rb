class Shield
  include Equipment

  class_attribute :bonus, default: 1
  class_attribute :damage

  def to_partial_path
    "characters/shield"
  end
end
