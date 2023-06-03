class Trip < ApplicationRecord
  belongs_to :user
  has_one :bus
  has_one :ticket

  validates :user, :bus, :ticket, presence: true
end
