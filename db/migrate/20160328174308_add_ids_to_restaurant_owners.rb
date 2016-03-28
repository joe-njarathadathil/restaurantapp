class AddIdsToRestaurantOwners < ActiveRecord::Migration
  def change
    add_column :restaurant_owners, :owner_id, :integer
    add_column :restaurant_owners, :restaurant_id, :integer
  end
end
