class Bus < ApplicationRecord
  has_many :tickets
  has_many :trips

  validates :seats, :brand, :model, :plate, :car_id, presence: true
end
