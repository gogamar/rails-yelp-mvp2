# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
pizza_place = { name: 'Pizza Place', address: 'Gracia, Barcelona', phone_number: "654321987", category: "italian"}
sushi_place = { name: 'Sushi Place', address: 'Eixample, Barcelona', phone_number: "654321987", category: "japanese"}
chinese_place = { name: 'Chinese Place', address: 'Bonanova, Barcelona', phone_number: "654356987", category: "chinese"}
seafood_place =  { name: 'Seafood Place', address: 'Barceloneta, Barcelona', phone_number: "654451987", category: "french"}
pastry_place = { name: 'Pastry Place', address: 'Poblenou, Barcelona', phone_number: "654671987", category: "belgian"}

[pizza_place, sushi_place, chinese_place, seafood_place, pastry_place].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Done!'
