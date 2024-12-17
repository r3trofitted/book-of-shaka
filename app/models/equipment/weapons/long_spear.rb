module Equipment
  class LongSpear < Weapon
    self.grip     = :two_hands
    self.bonus    = 2
    self.damage   = 1
    self.range    = :near
    self.cost     = 4
    self.features = %i(pointed)
  end
end
