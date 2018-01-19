class AddIconsForUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userpic, :string
  end
end
