class Ticket < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  belongs_to :buy

  validates :user, :buy, :departure_hour, :departure_date, :platform,
            :seat, :destination, :bus, :origin, presence: true
end
