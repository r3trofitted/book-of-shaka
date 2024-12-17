module Equipment
  class StuddedLeatherCap < Armor
    self.rating    = 1
    self.cost      = 2
    self.body_part = :head
    self.features  = %i(light)
  end
end
