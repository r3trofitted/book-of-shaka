module Equipment
  class Dagger < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 1
    self.range    = :arm
    self.cost     = 2
    self.features = %i(light edged pointed)
  end
end
