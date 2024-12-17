module Equipment
  class LeatherArmor < Armor
    self.rating    = 2
    self.cost      = 4
    self.body_part = :body
    self.features  = [:light]
  end
end
