class AddingImages < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :img, :text
  end
end
