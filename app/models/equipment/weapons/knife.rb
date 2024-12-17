module Equipment
  class Knife < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 1
    self.range    = :arm
    self.cost     = 1
    self.features = %i(light pointed)
  end
end
