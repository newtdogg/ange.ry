class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :desc, presence: true
  # Destroys all related ratings on deletion
  has_many :ratings, dependent: :destroy
end
