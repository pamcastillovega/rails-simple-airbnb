require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  new_flat = Flat.create!(
    name: Faker::Mountain.name,
    address: Faker::Address.street_address,
    description: 'blah, blah, blah',
    price_per_night: rand(20..200),
    number_of_guests: rand(0..6)
  )
  new_flat.save!
end
