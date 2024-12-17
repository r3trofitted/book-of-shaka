class Kin < Module
  include ActiveModel::Translation

  class_attribute :ages

  class Type < ActiveRecord::Type::Value
    def cast(value)
      if value.nil? || value.kind_of?(Kin)
        super
      else
        Kins.const_get value.to_s.camelize
      end
    end

    def serialize(value)
      if value.kind_of? Kin
        super(value.name.demodulize.underscore)
      else
        super
      end
    end
  end
end
