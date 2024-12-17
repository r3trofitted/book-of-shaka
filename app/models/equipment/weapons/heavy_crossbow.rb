module Equipment
  class HeavyCrossbow < Weapon
    self.grip     = :two_hands
    self.bonus    = 1
    self.damage   = 3
    self.range    = :long
    self.cost     = 40
    self.features = %i(heavy slow_loading)
  end
end
