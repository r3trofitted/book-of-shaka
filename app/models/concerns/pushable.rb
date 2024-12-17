module Pushable extend ActiveSupport::Concern
  included do
    class_attribute :rolls_kept_when_pushing, instance_writer: false, instance_predicate: false
  end

  def to_push_die
    roll.in?(rolls_kept_when_pushing) ? self : self.class.new
  end
end
