class DicePool
  class Type < ActiveRecord::Type::Value
    def deserialize(value)
      value = ActiveSupport::JSON.decode(value)

      if value.present?
        value.each_with_object([]) do |(type, rolls), dice|
          dice.concat rolls.map { "#{type}_die".camelcase.constantize.new(it) }
        end
      end
    end

    def serialize(value)
      if value.respond_to? :each
        value
          .each_with_object(Hash.new { |h, k| h[k] = [] }) do |die, h|
            type = die.class.name.underscore.delete_suffix("_die")
            h[type] << die.roll
          end
          .to_json
      else
        super
      end
    end
  end
end
