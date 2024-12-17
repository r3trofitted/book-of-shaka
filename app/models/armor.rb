class Armor
  include Equipment

  class_attribute :rating, default: 1
  class_attribute :body_part

  def to_partial_path
    "characters/armor"
  end
end
