module Equipment
  # TODO: make it a treasure item instead
  class Mask < TradeGood
    self.cost     = 10
    self.features = %i(tiny)
  end
end
