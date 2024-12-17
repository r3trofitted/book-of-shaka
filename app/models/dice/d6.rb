class D6
  include Comparable

  attr_reader :roll

  def self.call(n)
    Array.new(n.to_i) { new }
  end

  def initialize(roll = random_roll)
    @roll = roll.to_i
  end

  def <=>(other)
    roll <=> other.roll
  end

  def random_roll
    rand 1..6
  end

  def one? = @roll == 1
  def six? = @roll == 6
end
