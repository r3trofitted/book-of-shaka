module Equipment
  class Warhammer < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 2
    self.range    = :arm
    self.cost     = 12
    self.features = %i(blunt hook)
  end
end
