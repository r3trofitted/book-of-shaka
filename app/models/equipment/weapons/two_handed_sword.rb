module Equipment
  class TwoHandedSword < Weapon
    self.grip     = :two_hands
    self.bonus    = 2
    self.damage   = 3
    self.range    = :arm
    self.cost     = 40
    self.features = %i(heavy edged pointed parrying)
  end
end
