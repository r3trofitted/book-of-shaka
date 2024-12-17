module Equipment
  class ShortBow < Weapon
    self.grip     = :two_hands
    self.bonus    = 2
    self.damage   = 1
    self.range    = :short
    self.cost     = 6
    self.features = %i(light)
  end
end
