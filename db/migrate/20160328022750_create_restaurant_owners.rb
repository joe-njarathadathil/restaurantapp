class CreateRestaurantOwners < ActiveRecord::Migration
  def change
    create_table :restaurant_owners do |t|

      t.timestamps null: false
    end
  end
end
