module Equipment
  class ThrowingKnife < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 1
    self.range    = :short
    self.cost     = 1
    self.features = %i(light)
  end
end
