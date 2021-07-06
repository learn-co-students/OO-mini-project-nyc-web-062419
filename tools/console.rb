require_relative '../config/environment.rb'

anderson = User.new("Anderson")
ben = User.new("Ben")
banana = Ingredient.new("Banana")
nut = Ingredient.new("Nut")
ben.declare_allergy(banana)
anderson.declare_allergy(nut)
banana_bread = Recipe.new("Banana Bread")
chocolate_cake = Recipe.new("Chocolate Cake")
hot_dogs = Recipe.new("Hot Dogs")
rice = Recipe.new("Rice")
ingredient_array = [banana, nut]
banana_bread.add_ingrediants(ingredient_array)
anderson.add_recipe_card("today", 10, banana_bread)
anderson.add_recipe_card("today", 7, chocolate_cake)
anderson.add_recipe_card("today", 8, hot_dogs)
anderson.add_recipe_card("today", 2, rice)
binding.pry
puts "That was tasty"
