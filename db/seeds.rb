# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
ocean_basket = { name: 'Ocean Basket', address: '7 Boundary St, London', phone_number: '0126489', category: 'belgian' }
pizza_east = { name: 'Pizza East', address: '28 River St, Berlin', phone_number: '0186789', category: 'french' }
bella_donna = { name: 'Bella Donna', address: '10 Orange St, Cape Town', phone_number: '0196784', category: 'italian' }
grillhouse = { name: 'Grillhouse', address: '29 Road St, Leipzig', phone_number: '0167948', category: 'japanese' }
nuri = { name: 'Nuri', address: '69 Peter St, NY', phone_number: '0189475', category: 'japanese' }

[ocean_basket, pizza_east, bella_donna, grillhouse, nuri].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
