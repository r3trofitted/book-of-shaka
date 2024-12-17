module Equipment
  class OpenHelmet < Armor
    self.rating    = 2
    self.cost      = 8
    self.body_part = :head
    self.features  = %i(light)
  end
end
