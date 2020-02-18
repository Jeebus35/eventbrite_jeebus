# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


User.destroy_all
Event.destroy_all
Attendance.destroy_all
count = 0
10.times do
    count += 1
    a = Faker::Name.first_name
    b = Faker::Name.last_name
    User.create(first_name: a, last_name: b, email: a.downcase + b.downcase + "@yopmail.com")
end
10.times do
Event.create!(start_date: Faker::Date.forward(days: 360), duration: 60, description: Faker::ChuckNorris.fact, title: Faker::Educator.course_name, price: Faker::Number.between(from: 1, to: 800), location: Faker::Address.city)
end
puts " Et voilà un petit seed de fait cool!"