module Equipment
  class Pike < Weapon
    self.grip     = :two_hands
    self.bonus    = 2
    self.damage   = 2
    self.range    = :near
    self.cost     = 12
    self.features = %i(heavy pointed)
  end
end
