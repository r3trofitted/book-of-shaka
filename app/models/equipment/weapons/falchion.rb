module Equipment
  class Falchion < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 2
    self.range    = :arm
    self.cost     = 4
    self.features = %i(edged pointed)
  end
end
