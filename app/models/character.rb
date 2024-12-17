class Character < ApplicationRecord
  has_one_attached :portrait do |portrait|
    portrait.variant :thumb, resize_to_limit: [200, 200], preprocessed: true
  end

  has_many :rolls

  attribute :kin, Kin::Type.new
  attribute :profession, Profession::Type.new
  attribute :strength, Attribute::Type.new
  attribute :agility, Attribute::Type.new
  attribute :wits, Attribute::Type.new
  attribute :empathy, Attribute::Type.new
  attribute :skills, SkillSet::Type.new
  attribute :talents, TalentSet::Type.new
  attribute :food, Consumable::Type.new
  attribute :water, Consumable::Type.new
  attribute :arrows, Consumable::Type.new
  attribute :torches, Consumable::Type.new
  attribute :equipment, EquipmentSet::Type.new

  broadcasts_refreshes

  def base_attributes
    attributes.slice("strength", "agility", "wits", "empathy").with_indifferent_access
  end

  def age_bracket
    return if age.blank?

    kin.ages.find { |bracket, years| age.in? years }.first
  end

  def weapons
    equipment.grep(Weapon)
  end

  def armor
    equipment.grep(Armor)
  end

  def shield
    equipment.grep(Shield)
  end

  def gear
    equipment - weapons - armor - shield
  end

  def max_encumbrance
    strength.base * 2
  end

  def encumbrance
    coins_encumbrance = case coins.values.sum
                        when 0...100 then 0
                        when 100...200 then 0.5
                        when 200...400 then 1
                        else coins.values.sum / 200
                        end
    (equipment.sum(&:encumbrance) + coins_encumbrance).ceil
  end

  def over_encumbered?
    encumbrance > max_encumbrance
  end

  def coins
    super
      .with_indifferent_access
      .with_defaults(gold: 0, silver: 0, copper: 0)
      .transform_values(&:to_i)
  end

  def gold_coins
    coins.fetch :gold
  end

  def silver_coins
    coins.fetch :silver
  end

  def copper_coins
    coins.fetch :copper
  end
end
