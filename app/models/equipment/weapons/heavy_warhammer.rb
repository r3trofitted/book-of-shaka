module Equipment
  class HeavyWarhammer < Weapon
    self.grip     = :two_hands
    self.bonus    = 2
    self.damage   = 3
    self.range    = :arm
    self.cost     = 22
    self.features = %i(heavy blunt hook)
  end
end
