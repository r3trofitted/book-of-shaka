module Equipment
  class Mace < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 1
    self.range    = :arm
    self.cost     = 4
    self.features = %i(blunt)
  end
end
