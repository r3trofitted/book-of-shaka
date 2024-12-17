class Weapon
  include Equipment

  class_attribute :grip, default: :one_hand
  class_attribute :bonus, default: 0
  class_attribute :damage, default: 1
  class_attribute :range, default: :arm

  def to_partial_path
    "characters/weapon"
  end
end
