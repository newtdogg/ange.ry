class AddRestaurantIdToRatings < ActiveRecord::Migration[5.1]
  def change
    add_column :ratings, :restaurant_id, :integer
  end
end
