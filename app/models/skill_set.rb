# FIXME: mark as dirty when skills are changed
class SkillSet
  include ActiveModel::API
  include ActiveModel::Attributes

  GROUPS = {
    strength: %i(might endurance melee crafting),
    agility:  %i(stealth sleight_of_hand move marksmanship),
    wits:     %i(scouting lore survival insight),
    empathy:  %i(manipulation performance healing animal_handling)
  }.with_indifferent_access

  with_options default: 0 do
    attribute :might, :integer
    attribute :endurance, :integer
    attribute :melee, :integer
    attribute :crafting, :integer
    attribute :stealth, :integer
    attribute :sleight_of_hand, :integer
    attribute :move, :integer
    attribute :marksmanship, :integer
    attribute :scouting, :integer
    attribute :lore, :integer
    attribute :survival, :integer
    attribute :insight, :integer
    attribute :manipulation, :integer
    attribute :performance, :integer
    attribute :healing, :integer
    attribute :animal_handling, :integer
  end

  def self.attribute_for(name)
    name = name.to_sym

    GROUPS
      .find { |_, skills| name.in? skills }
      .first
  end

  def [](group_or_name)
    if GROUPS.key? group_or_name
      GROUPS
        .fetch(group_or_name, {})
        .map { Skill.new it, send(it) }
    else
      attributes.with_indifferent_access[group_or_name]
    end
  end

  # TODO: replace with a view helper – this class is only used for presentation, and this is a bit confusing
  class Skill
    attr_reader :name, :level

    def initialize(name, level)
      @name, @level = name, level
    end

    def to_partial_path
      "characters/skill"
    end
  end

  class Type < ActiveRecord::Type::Value
    def cast(value)
      if value.nil? || value.kind_of?(SkillSet)
        super
      else
        SkillSet.new JSON.parse(value)
      end
    end

    def serialize(value)
      if value.kind_of? SkillSet
        JSON.dump value.attributes.select { |_, level| level.positive? }
      else
        super
      end
    end
  end
end
