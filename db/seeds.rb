# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


city_list = Array.new
city_list << City.new(city_name: 'Singapore', city_code: 'SG')
city_list << City.new(city_name: 'Hong Kong', city_code: 'HK')
City.import city_list
