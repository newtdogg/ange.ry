class Rating < ApplicationRecord
  validates :stars, presence: true
  belongs_to :restaurant
  belongs_to :user

  def did_user_make_rating(id)
    if self.user_id == id
      return true
    end
    false
  end

end
