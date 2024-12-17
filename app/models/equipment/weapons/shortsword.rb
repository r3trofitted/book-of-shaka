module Equipment
  class Shortsword < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 1
    self.range    = :arm
    self.cost     = 6
    self.features = %i(edged pointed parrying)
  end
end
