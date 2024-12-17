module Equipment
  class TwoHandedAxe < Weapon
    self.grip     = :two_hands
    self.bonus    = 2
    self.damage   = 3
    self.range    = :arm
    self.cost     = 18
    self.features = %i(heavy edged hook)
  end
end
