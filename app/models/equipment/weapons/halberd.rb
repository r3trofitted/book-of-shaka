module Equipment
  class Halberd < Weapon
    self.grip     = :two_hands
    self.bonus    = 2
    self.damage   = 2
    self.range    = :near
    self.cost     = 30
    self.features = %i(heavy pointed edged hook)
  end
end
