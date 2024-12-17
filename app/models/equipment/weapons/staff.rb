module Equipment
  class Staff < Weapon
    self.grip     = :two_hands
    self.bonus    = 1
    self.damage   = 1
    self.range    = :near
    self.cost     = 1
    self.features = %i(blunt hook parrying)
  end
end
