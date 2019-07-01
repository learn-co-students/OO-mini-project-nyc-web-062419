require_relative '../config/environment.rb'





ingredient1 = Ingredient.new("1")
ingredient2 = Ingredient.new("2")
ingredient3 = Ingredient.new("3")
ingredient4 = Ingredient.new("4")
ingredient5 = Ingredient.new("5")
ingredient6 = Ingredient.new("6")
ingredient7 = Ingredient.new("7")
ingredient8 = Ingredient.new("8")

user1 = User.new("user1", [ingredient1, ingredient5])
user2 = User.new("user2")
user3 = User.new("user3")
user4 = User.new("user4")

allergy1 = Allergy.new(user1, ingredient1)
allergy2 = Allergy.new(user1, ingredient2)
allergy3 = Allergy.new(user1, ingredient3)
allergy4 = Allergy.new(user2, ingredient1)
allergy6 = Allergy.new(user3, ingredient4)
allergy7 = Allergy.new(user4, ingredient5)
allergy8 = Allergy.new(user2, ingredient6)
allergy9 = Allergy.new(user3, ingredient1)

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")
recipe4 = Recipe.new("recipe4")
# recipe5 = Recipe.new
# recipe6 = Recipe.new
# recipe7 = Recipe.new
# recipe8 = Recipe.new
# recipe9 = Recipe.new
# recipe10 = Recipe.new

recipecard1 = RecipeCard.new(user1, recipe1, "2012-03-08", 5)
recipecard2 = RecipeCard.new(user1, recipe2, "2013-11-22", 1)
recipecard3 = RecipeCard.new(user1, recipe3, "2012-03-08", 3)
recipecard4 = RecipeCard.new(user1, recipe4, "2012-03-08", 7)
recipecard5 = RecipeCard.new(user2, recipe1, "2020-03-14", 8)
recipecard6 = RecipeCard.new(user3, recipe4, "2012-04-08", 9)
recipecard7 = RecipeCard.new(user3, recipe1, "2015-06-08", 2)
recipecard8 = RecipeCard.new(user4, recipe2, "2012-08-18", 8)
recipecard9 = RecipeCard.new(user4, recipe3, "2012-08-18", 6)
recipecard10 = RecipeCard.new(user4, recipe4, "2012-08-18", 5)

recipeingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipeingredient2 = RecipeIngredient.new(recipe2, ingredient2)
recipeingredient3 = RecipeIngredient.new(recipe3, ingredient3)
recipeingredient4 = RecipeIngredient.new(recipe4, ingredient1)
recipeingredient5 = RecipeIngredient.new(recipe1, ingredient2)
recipeingredient6 = RecipeIngredient.new(recipe2, ingredient3)
recipeingredient7 = RecipeIngredient.new(recipe3, ingredient4)
recipeingredient8 = RecipeIngredient.new(recipe4, ingredient5)
recipeingredient9 = RecipeIngredient.new(recipe4, ingredient6)
recipeingredient10 = RecipeIngredient.new(recipe4, ingredient7)

#recipe1 : ingredient1, ingredient2
#recipe2: ingredient2, ingredient3
#recipe3: ingredient3, ingredient 4
#recipe4: ingredient1, ingredient5, ingredient6, ingredient7




puts user1.allergies.length
puts user2.allergies.length

puts user1.allergens.length
puts user2.allergens.length

puts user3.recipe_cards.length
puts user4.recipe_cards.length

puts user3.recipes.length
puts user4.recipes.length


puts ingredient1.allergies.length
puts ingredient2.allergies.length

puts ingredient1.allergic_users.length
puts ingredient2.allergic_users.length


puts recipe1.cards.length
puts recipe2.cards.length

puts recipe1.users.length
puts recipe2.users.length

puts recipe3.recipe_ingredients.length
puts recipe4.recipe_ingredients.length

puts recipe3.ingredients.length
puts recipe4.ingredients.length


print Recipe.only_uses([ingredient1, ingredient2])
print Recipe.only_uses([ingredient2, ingredient3, ingredient4])
print Recipe.only_uses([ingredient1, ingredient5, ingredient2])

print Recipe.only_uses([ingredient2, ingredient3, ingredient4, ingredient8])
print Recipe.only_uses([ingredient1, ingredient5, ingredient2, ingredient8])














binding.pry
