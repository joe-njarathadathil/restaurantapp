class Owner < ActiveRecord::Base
	has_many :restaurant_owners
  has_many :restaurants, through: :restaurant_owners

end
