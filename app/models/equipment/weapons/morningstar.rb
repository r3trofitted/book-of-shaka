module Equipment
  class Morningstar < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 2
    self.range    = :arm
    self.cost     = 8
    self.features = %i(blunt)
  end
end
