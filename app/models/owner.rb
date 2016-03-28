class Owner < ActiveRecord::Base
	has_many :restaurant_owners
  has_many :restaurants, through: :restaurant_owners
  
  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :email, presence: true, uniqueness: true, 
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "is not a valid email"}


end
