class Buy < ApplicationRecord
  belongs_to :user
  has_one :ticket

  validates :total, presence: true, numericality: true
  validates :user, presence: true
end
