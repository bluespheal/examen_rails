class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flight
  validates :num_booking, :total, :flight_id, :user_id, presence: true
end
