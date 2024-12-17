module Equipment
  class Trident < Weapon
    self.grip     = :two_hands
    self.bonus    = 1
    self.damage   = 2
    self.range    = :near
    self.cost     = 6
    self.features = %i(pointed hook)
  end
end
