class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :desc, presence: true
  # Destroys all related ratings on deletion
  has_many :ratings, dependent: :destroy

  def calculate_average_rating(id)
    restaurant = Restaurant.find(id)
    restaurant.ratings.count == 0 ? "No ratings yet!" : ((restaurant.ratings.inject(0){|sum, i| sum + i.stars} / (restaurant.ratings.count).to_f).round(1))
  end


end
