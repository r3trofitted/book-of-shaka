module Equipment
  class Battleaxe < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 2
    self.range    = :arm
    self.cost     = 6
    self.features = %i(heavy edged hook)
  end
end
