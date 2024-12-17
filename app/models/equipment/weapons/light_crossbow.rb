module Equipment
  class LightCrossbow < Weapon
    self.grip     = :two_hands
    self.bonus    = 1
    self.damage   = 2
    self.range    = :long
    self.cost     = 24
    self.features = %i(slow_loading)
  end
end
