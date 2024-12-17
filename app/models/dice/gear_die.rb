class GearDie < D6
  include Pushable
  self.rolls_kept_when_pushing = [1, 6]

  def to_partial_path = "dice/gear_die"
end
