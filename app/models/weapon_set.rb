class WeaponSet
  include Enumerable

  delegate_missing_to :@weapons

  def initialize(weapons = [])
    @weapons = weapons
  end

  class Type < ActiveRecord::Type::Value
    def cast(value)
      if value.nil? || value.kind_of?(WeaponSet)
        super
      else
        weapons = JSON.parse(value).map { Weapons.const_get(it.to_s.camelize).new }
        WeaponSet.new weapons
      end
    end

    def serialize(value)
      if value.kind_of? WeaponSet
        JSON.dump value.map { |weapon| weapon.class.name.demodulize.underscore }
      else
        super
      end
    end
  end
end
