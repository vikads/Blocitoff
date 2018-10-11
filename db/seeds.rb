# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

#Create users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    confirmed_at: Time.now
  )
end

users = User.all

#Create To-Dos
20.times do
  Item.create!(
    user: users.sample,
    name: Faker::Hobbit.quote
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users.created."
puts "#{Item.count} todos created"
