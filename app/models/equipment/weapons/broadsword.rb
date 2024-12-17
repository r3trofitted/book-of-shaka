module Equipment
  class Broadsword < Weapon
    self.grip     = :one_hand
    self.bonus    = 2
    self.damage   = 2
    self.range    = :arm
    self.cost     = 10
    self.features = %i(edged pointed parrying)
  end
end
