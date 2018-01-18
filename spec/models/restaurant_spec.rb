require 'rails_helper'

describe Rating do
  describe '#get_average_rating' do
    it 'should calculate and get the average rating of a restaurant' do
      restaurant = Restaurant.create(name: "name", location: "location", desc: "desc")
      Rating.create(stars: 3, review: "decent", restaurant_id: 1)
      Rating.create(stars: 5, review: "nice", restaurant_id: 1)
      expect(restaurant.get_average_rating).to eq 4
    end
  end
end
