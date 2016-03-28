# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create!([{
    name: "Chipotle",
    address: "Chicago, IL",
    description: "asdfasga",
    phone_number: "1234567890"
  },
  {
    name: "Mcdonalds",
    address: "Chicago, IL",
    description: "asdfg",
    phone_number: "1234567890"     
  },
  {
    name: "Freshii",
    address: "Chicago, IL",
    description: "asdfsadfasd",
    phone_number: "1234567890"
  }
])
print "created #{Restaurant.count} Restaurants"

Owner.create!([{
    email: "test@gmail.com",
    first_name: "Joe",
    last_name: "N"
  },
  {
    email: "test1@gmail.com",
    first_name: "Viktor",
    last_name: "S"
  },
  {
    email: "test2@gmail.com",
    first_name: "Jiha",
    last_name: "H"
  }
])
