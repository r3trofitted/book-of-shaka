module Equipment
  class ThrowingSpear < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 1
    self.range    = :short
    self.cost     = 3
    self.features = %i()
  end
end
