class Trail < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :length, presence: true
end
