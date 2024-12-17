module Equipment
  class Scimitar < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 2
    self.range    = :arm
    self.cost     = 8
    self.features = %i(edged pointed hook parrying)
  end
end
