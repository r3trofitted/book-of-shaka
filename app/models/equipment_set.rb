class EquipmentSet
  include Enumerable

  delegate_missing_to :@items

  def initialize(items = [])
    @items = items
  end

  class Type < ActiveRecord::Type::Value
    def cast(value)
      if value.nil? || value.kind_of?(EquipmentSet)
        super
      else
        items = JSON.parse(value).map { Equipment.const_get(it.to_s.camelize).new }
        EquipmentSet.new items
      end
    end

    def serialize(value)
      if value.kind_of? EquipmentSet
        JSON.dump value.map { |weapon| weapon.class.name.demodulize.underscore }
      else
        super
      end
    end
  end
end
