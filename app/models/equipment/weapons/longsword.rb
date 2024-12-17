module Equipment
  class Longsword < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 2
    self.features = %i(heavy edged pointed parrying)
  end
end
