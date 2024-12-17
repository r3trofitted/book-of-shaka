class Attribute < Numeric
  attr_reader :base, :current

  def initialize(base, current: nil)
    @base, @current = base.to_i, (current || base).to_i
  end

  def damaged?
    current < base
  end

  def coerce(other)
    [Attribute.new(base: base), self]
  end

  def <=>(other)
    to_i <=> other.to_i
  end

  def to_i
    current
  end

  def +(other)
    Attribute.new(base, current: current + other.to_i)
  end

  def -(other)
    Attribute.new(base, current: current - other.to_i)
  end

  class Type < ActiveRecord::Type::Value
    def deserialize(value)
      if value.nil? || value.kind_of?(Attribute)
        super
      else
        /(?<base>\d+)(?:\s\((?<current>\d+)\))?/ =~ value
        Attribute.new base, current: current
      end
    end

    def serialize(value)
      if value.kind_of? Attribute
        value.base
          .to_s
          .tap { it << " (#{value.current})" if value.damaged? }
      else
        super
      end
    end
  end
end
