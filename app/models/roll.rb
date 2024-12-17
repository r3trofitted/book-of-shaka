class Roll < ApplicationRecord
  belongs_to :character

  attribute :dice_pool, DicePool::Type.new

  delegate :name, to: :character, prefix: true

  after_create_commit :broadcast_later

  def successes
    dice_pool.select(&:six?).count
  end

  private

  # TODO: Change to just broadcasting a notification to _fetch_ the new roll
  def broadcast_later
    broadcast_prepend_to character, target: "notification-center", layout: "notification", variant: :notification
  end
end
