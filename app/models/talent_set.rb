class TalentSet
  extend ActiveModel::Translation

  GROUPS = {
    # TODO: Move to kin definitions instead?
    kin:      %i(adaptive inner_peace psychic_power true_grit hard_to_catch hunting_instincts unbreakable noctural),
    # TODO: Move to profession definitions instead?
    druid:    %i(path_of_healing path_of_shifting_shapes path_of_sight),
    fighter:  %i(path_of_the_blade path_of_the_enemy path_or_the_shield),
    hunter:   %i(path_of_the_arrow path_of_the_beast path_of_the_forest),
    minstrel: %i(path_of_the_hymn path_of_the_song path_of_the_warcry),
    peddler:  %i(path_of_treasure path_of_words path_of_many_things),
    rider:    %i(path_of_the_companion path_of_the_knight path_of_the_plains),
    rogue:    %i(path_of_the_face path_of_the_killer path_of_poison),
    sorcerer: %i(path_of_blood path_of_death path_of_signs path_of_stone),
    general:  %i(ambidextrous axe_fighter berserker bowyer brawler builder chef cold_blooded defender dragonslayer
                 executioner fast_footwork fast_shooter fearless firm_grip fisher hammer_fighter herbalist
                 horseback_rider incorruptible knife_fighter lightning_fast lockpicker lucky master_of_the_hunt
                 melee_charge pack_rat pain_resistant pathfinder poisoner quartermaster quickdraw sailor sharpshooter
                 sharp_tongue shield_fighter sixth_sense smith spear_fighter steady_feet sword_fighter tailor tanner
                 threatening throwing_arm wanderer)
  }

  delegate_missing_to :@talents

  def initialize(talents = {})
    @talents = talents.map { |name, rating| Talent.new name, rating }
  end

  def to_h
    @talents.each_with_object({}) { |talent, h| h.store talent.name, talent.rating }
  end

  class Talent
    attr_reader :name, :rating

    def initialize(name, rating)
      @name, @rating = name, rating
    end

    def to_partial_path
      "characters/talent"
    end
  end

  class Type < ActiveRecord::Type::Value
    def cast(value)
      if value.nil? || value.kind_of?(TalentSet)
        super
      else
        TalentSet.new JSON.parse(value)
      end
    end

    def serialize(value)
      if value.kind_of? TalentSet
        JSON.dump value.to_h
      else
        super
      end
    end
  end
end
