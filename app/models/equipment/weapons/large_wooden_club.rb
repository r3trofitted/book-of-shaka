module Equipment
  class LargeWoodenClub < Weapon
    self.grip     = :one_hand
    self.bonus    = 1
    self.damage   = 2
    self.range    = :arm
    self.cost     = 2
    self.features = %i(heavy blunt)
  end
end
