# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

count = 0
10.times do
    count += 1
    a = Faker::Name.first_name
    b = Faker::Name.last_name
    User.create(first_name: a, last_name: b, email: a.downcase + b.downcase + "@yopmail.com")
end

puts "SEED LOADED"
