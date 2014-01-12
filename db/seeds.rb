# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Order.delete_all
50.times {|n| Order.create(number: 2000+rand(1000), price: rand(10000), purchased:(rand(10-1)+1).days.ago.to_datetime, shipping: rand(2) == 1 )}
