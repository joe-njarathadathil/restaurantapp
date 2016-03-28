class Restaurant < ActiveRecord::Base
	has_many :restaurant_owners
	has_many :owners, through: :restaurant_owners

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
