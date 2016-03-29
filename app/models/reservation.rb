class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  validates :time, presence: true  
end
