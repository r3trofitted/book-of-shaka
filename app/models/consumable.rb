class Consumable
  DICE = [6, 8, 10, 12]

  attr_reader :die

  def initialize(die)
    unless die.blank?
      @die = die.slice(/d?(\w+)/, 1).to_i
      raise ArgumentError unless @die.in? DICE
    end
  end

  def to_s
    if depleted?
      ""
    else
      "d#{@die}"
    end
  end

  def depleted?
    @die.nil?
  end

  class Type < ActiveRecord::Type::Value
    def cast(value)
      if value.nil? || value.kind_of?(Consumable)
        super
      else
        Consumable.new value
      end
    end

    def serialize(value)
      if value.kind_of?(Consumable)
        value.to_s
      else
        super
      end
    end
  end
end
