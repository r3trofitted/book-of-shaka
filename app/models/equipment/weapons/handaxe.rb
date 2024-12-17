module Equipment
  class Handaxe < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 2
    self.range    = :arm
    self.cost     = 2
    self.features = %i(edged hook)
  end
end
