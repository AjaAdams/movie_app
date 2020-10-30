# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# actor = Actor.new({ first_name: "Mindy", last_name: "Kaling", known_for: "The Mindy Project" })
# actor.save
actor = Actor.new({ first_name: "Gabrielle", last_name: "Union", known_for: "Deliver Us from Eva" })
actor.save
actor = Actor.new({ first_name: "Chadwick", last_name: "Boseman", known_for: "Black Panther" })
actor.save
movie = Movie.new({ title: "Titanic", year: 2002, plot: "Boat hits iceberg and goes down in a very sad way." })
movie.save
movie = Movie.new({ title: "What's Love Got to Do With It", year: 2000, plot: "Tina Turner life story" })
movie.save
