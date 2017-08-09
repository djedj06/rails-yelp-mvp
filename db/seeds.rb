# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create ({
  name: "Chibois",
  address: "Grasse",
  phone_number: "0698564310",
  category: "french",
  })

Restaurant.create ({
  name: "Crazy B",
  address: "Cannes",
  phone_number: "0612986543",
  category: "italian"
  })

Restaurant.create ({
  name: "Chinese B",
  address: "Paris",
  phone_number: "0626543985",
  category: "chinese"
  })
