class Restaurant < ApplicationRecord
  # Destroys all related ratings on deletion
  has_many :ratings, dependent: :destroy
end
