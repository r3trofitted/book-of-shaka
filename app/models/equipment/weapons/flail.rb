module Equipment
  class Flail < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 2
    self.range    = :near
    self.cost     = 16
    self.features = %i(blunt)
  end
end
