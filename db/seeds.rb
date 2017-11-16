# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

request_uri = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
buffer = open(request_uri).read
result = JSON.parse(buffer)
result["drinks"].each do |cocktail|
  Ingredient.create(name: cocktail["strIngredient1"])
end


# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
Cocktail.create(name: "Martinez")
Cocktail.create(name: "Martini")
Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Brooklyn")
Cocktail.create(name: "Daiquiri")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Sidecar")
Cocktail.create(name: "French 75")
Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Irish Coffee")
Cocktail.create(name: "Jack Rose")
Cocktail.create(name: "Negroni")
Cocktail.create(name: "Boulevardier")
Cocktail.create(name: "Sazerac")
Cocktail.create(name: "Vieux Carré")
Cocktail.create(name: "Ramos Gin Fizz")
Cocktail.create(name: "Mint Julep")
Cocktail.create(name: "Whiskey Sour")
Cocktail.create(name: "Mai Tai")
Cocktail.create(name: "Planter's Punch")
Cocktail.create(name: "Pisco Sour")
Cocktail.create(name: "Cosmopolitan")
Cocktail.create(name: "Tom Collins")
Cocktail.create(name: "Last Word")























