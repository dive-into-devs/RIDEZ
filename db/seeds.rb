# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "faker"
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(email: "ej@ds.com", password: "1232323", full_name: "jack", billing_address: "illinos", phone_number: "00020398239238", payment_information: "Credit Card", driver_license: "938283728")
Owner.create!(user_id: User.first.id)
16.times do
  Car.create!(plate: Faker::Vehicle.license_plate, model: Faker::Vehicle.make_and_model, vin: Faker::Vehicle.vin, owner_id: Owner.first.id, description:Faker::Vehicle.car_type)
end
Offer.create!(user_id: User.first.id, car_id: Car.first.id, price: "50$", time_period: "24-11-2023", location: "casablanca")
