require 'faker'

puts "Seeding restaurants"

Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]

20.times do
    name = Faker::Restaurant.name 
    address = Faker::Address.street_name
    phone = Faker::PhoneNumber.phone_number
    category = categories.sample
    rest = Restaurant.new(name: name, address: address, phone_number: phone, category: category)
    rest.save!
end

puts "finished Restaurants - #{Restaurant.count} new units"
