# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.delete_all
Player.create([{name: "MA Long", country: "China", rank: 1}, {name:"BOLL Timo", country: "Germany", rank: 5}, {name:"SAMSONOV Vladimir", country:"Belorussian", rank:12}])
