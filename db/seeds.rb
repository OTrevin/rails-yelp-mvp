# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "French"  }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "Italian" }
texas = { name: "Texas", address: "7 Novena", category: "Belgian"  }
mexico = { name: "Mexico restaurant", address: "8 Novena", category: "Chinese"  }
usa = { name: "USA restaurant", address: "30 Novena, Singapore", category: "French"  }

[dishoom, pizza_east, texas, mexico, usa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
