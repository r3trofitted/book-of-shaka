module Equipment
  class ShortSpear < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 1
    self.range    = :near
    self.cost     = 2
    self.features = %i(pointed)
  end
end
