require_relative '../config/environment.rb'

user1 = User.new("Anthony")
user2 = User.new("Joe")
user3 = User.new("Ben")
user4 = User.new("Yana")

ingredient1 = Ingredient.new('toast')
ingredient2 = Ingredient.new('avocado')
ingredient3 = Ingredient.new('egg')
ingredient4 = Ingredient.new('bacon')
ingredient5 = Ingredient.new('cheese')

recipe1 = Recipe.new("Avocado Toast")
recipe2 = Recipe.new("BEC Cheese")
recipe3 = Recipe.new("Egg & Cheese")

allergy1 = Allergy.new(user1,ingredient4)
allergy2 = Allergy.new(user2,ingredient2)
allergy3 = Allergy.new(user3,ingredient2)

recipeIngredient1 = RecipeIngredient.new(recipe1,[ingredient1,ingredient2])
recipeIngredient2 = RecipeIngredient.new(recipe2,[ingredient1,ingredient3,ingredient4,ingredient5])
recipeIngredient3 = RecipeIngredient.new(recipe3,[ingredient1,ingredient3,ingredient5])

recipeCard1 = RecipeCard.new(2000,5,user3,recipe1)
recipeCard2 = RecipeCard.new(2010,4,user1,recipe3)
recipeCard3 = RecipeCard.new(2015,2,user4,recipe1)
recipeCard4 = RecipeCard.new(2016,2,user2,recipe2)
recipeCard5 = RecipeCard.new(2019,5,user2,recipe3)



binding.pry

puts "done"