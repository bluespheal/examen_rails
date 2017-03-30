class Flight < ApplicationRecord
  has_many :users, through: :bookings
  validates :num_flight, :date, :depart, :from, :to, :duration, :cost, :passengers, presence: true

end
