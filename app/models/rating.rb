class Rating < ApplicationRecord
  validates :stars, presence: true
  belongs_to :restaurant
end
