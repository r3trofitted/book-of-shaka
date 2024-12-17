module Equipment
  class ThrowingAxe < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 2
    self.range    = :short
    self.cost     = 2
    self.features = %i()
  end
end
