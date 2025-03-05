class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :description, :price, presence: true
  validates :category, inclusion: { in: %w[event_set_up sound_system] }
end
