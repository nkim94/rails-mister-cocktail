# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cocktail_names = [
  "Mojito",
  "Bloody Mary",
  "Expresso Martini",
  "Gin & Tonic",
  "Negroni",
  "Strawberry Daiquiri"
]

puts "Cleaning up database..."
Cocktail.destroy_all
Ingredient.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts "Creating cocktails..."
# Cocktail.create!({attributes})
cocktail_names.each do |name|
  Cocktail.create!(name: name)
end

puts "Created #{Cocktail.count} cocktails"

puts "Finished"
