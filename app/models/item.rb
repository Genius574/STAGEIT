class Item < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :name, :category, :description, :price, presence: true
  validates :category, inclusion: { in: %w[event_set_up sound_system] }

  include PgSearch::Model

  pg_search_scope :search_by_name_and_category,
                  against: [:name, :category],
                  using: {
                    tsearch: { prefix: true }
                  }
end
