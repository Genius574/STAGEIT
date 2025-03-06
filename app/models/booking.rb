class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  enum status: {
    pending: 0,
    approved: 1,
    declined: 2
  }

  after_create :set_initial_status

  private

  def set_initial_status
    self.status = :pending
    save!
  end
end
