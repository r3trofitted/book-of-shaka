module Equipment
  class PlateArmor < Armor
    self.rating    = 8
    self.cost      = 80
    self.body_part = :body
    self.features  = [:heavy]
  end
end
