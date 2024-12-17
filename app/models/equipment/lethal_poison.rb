module Equipment
  class LethalPoison < TradeGood
    self.cost     = 10
    self.features = %i(tiny)

    attr_accessor :quantity

    def initialize(quantity = 1)
      @quantity = quantity.to_i
    end
  end
end
