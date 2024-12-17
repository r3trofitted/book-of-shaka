class Profession < Module
  include ActiveModel::Translation

  class Type < ActiveRecord::Type::Value
    def cast(value)
      if value.nil? || value.kind_of?(Profession)
        super
      else
        Professions.const_get value.to_s.camelize
      end
    end

    def serialize(value)
      if value.kind_of? Profession
        super(value.name.demodulize.underscore)
      else
        super
      end
    end
  end
end
