# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "duongnq",
             email: "duongnq@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

19.times do |n|
  name  = Faker::Name.name
  email = "duongnq#{n+1}@gmail.com"
  password = "123456"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
  end
users = User.order(:created_at).take(6)
19.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end