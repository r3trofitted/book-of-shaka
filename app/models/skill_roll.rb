class SkillRoll < Roll
  before_save :resolve!, unless: :resolved?

  attr_accessor :base_dice, :skill_dice, :gear_dice

  belongs_to :first_roll, class_name: "SkillRoll", optional: true
  has_one :push, class_name: "SkillRoll", inverse_of: :first_roll

  alias_attribute :skill, :subject

  def self.push_for(first_roll)
    SkillRoll.new do |push|
      push.first_roll = first_roll
      push.character  = first_roll.character
      push.skill      = first_roll.skill
      push.dice_pool  = first_roll.dice_pool.map(&:to_push_die)
    end
  end

  def base_dice
    @base_dice || attribute_score
  end

  def skill_dice
    @skill_dice || skill_score
  end

  def gear_dice
    @gear_dice || 0 # TODO
  end

  def resolve!
    self.dice_pool = BaseDie.(base_dice) + SkillDie.(skill_dice) + GearDie.(gear_dice)
    # TODO: artifacts and other bonuses
  end

  def resolved?
    dice_pool.present?
  end

  def pushable?
    first_roll.blank? && push.blank?
  end

  def banes
    dice_pool.grep_v(SkillDie).select(&:one?).count
  end

  private

  def attribute_score
    character.base_attributes[SkillSet.attribute_for(skill)].current
  end

  def skill_score
    character.skills[skill]
  end
end
