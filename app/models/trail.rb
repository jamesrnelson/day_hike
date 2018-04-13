class Trail < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :length, presence: true

  has_many :trip_trails
  has_many :trips, through: :trip_trails
end
