class Rating < ApplicationRecord
  validates :stars, presence: true
  belongs_to :restaurant
  belongs_to :user

  private

  def prevent_multiple_ratings
    restaurant.ratings.each do |rating|
      if rating.user.id == session[:user_id]
        return true
      end
    end
  end


end
