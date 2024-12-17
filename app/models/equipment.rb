module Equipment
  def self.included(other)
    other.extend ActiveModel::Translation
    other.extend ActiveModel::Naming

    other.class_attribute :cost
    other.class_attribute :features, default: []
  end

  def encumbrance
    case features
    in [:heavy, *]
      2
    in [:light, *]
      0.5
    in [:tiny|:no_encumbrance, *]
      0
    else
      1
    end
  end
end
