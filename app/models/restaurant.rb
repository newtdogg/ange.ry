class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :desc, presence: true
  # Destroys all related ratings on deletion
  has_many :ratings, dependent: :destroy
  belongs_to :user


  def get_average_rating
    calculate_average_rating
  end

  def prevent_multiple_ratings(id)
    self.ratings.each do |rating|
      if rating.user_id == id
        return true
      end
    end
    false
  end

  # only the user that made the review can edit it
  def did_user_rate(id)
    self.rating.user_id == id
  end

  private

  def calculate_average_rating
    self.ratings.count == 0 ? "No ratings yet!" : ((self.ratings.inject(0){|sum, i| sum + i.stars} / (self.ratings.count).to_f).round(1))
  end


end
