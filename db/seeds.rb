# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
5.times do 
	User.create(name: Faker::Name.name, email: Faker::Internet.email, password: 'password')
end

g = Group.new(name: 'Trip', summary: 'Trip Expenses')
User.all.each do |u|
	g.users << u
end
g.save

10.times do 
	g.bills.build({item: ["Dinner", "Snacks", "Lunch", "Other"].sample, amount: rand(250..1000), user_id: rand(1..User.count), location: Faker::Team::name})
	g.save
end
