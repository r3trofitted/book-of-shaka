class SkillDie < D6
  include Pushable
  self.rolls_kept_when_pushing = [6]

  def to_partial_path = "dice/skill_die"
end
