class Restaurant < ActiveRecord::Base
	has_many :restaurant_owners
	has_many :owners, through: :restaurant_owners

end
