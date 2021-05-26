# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Cleaning database...."
Island.destroy_all

puts "DB cleaned"
puts "Visiting Islands..."
user = User.new(email: 'mario@nasa.us', password: '123456')
user.save!
24.times do
  island = Island.new(
    name: Faker::Mountain.range,
    address: Faker::Address.street_name,
    description: Faker::Restaurant.description,
    daily_rate: Faker::Number.number(digits: 5),
    availability: Faker::Boolean.boolean,
    user_id: user.id)
  island.save!
end

puts "Seeds created!"
