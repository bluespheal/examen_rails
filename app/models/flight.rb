class Flight < ApplicationRecord
  belongs_to :user
  validates :user_id, :num_flight, :date, :depart, :from, :to, :duration, :cost, :passengers, presence: true

end
