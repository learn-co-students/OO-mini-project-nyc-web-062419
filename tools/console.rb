require_relative '../config/environment.rb'

# seeding ingredients
flour = Ingredient.new("flour")
sugar = Ingredient.new("sugar")
baking_soda = Ingredient.new("baking soda")
butter = Ingredient.new("butter")
eggs = Ingredient.new("eggs")
vanilla = Ingredient.new("vanilla")

# seeding users
alex = User.new("Alex")
colin = User.new("Colin")
yosef =User.new("Yosef")



# seeding recipies
cookies = Recipe.new("cookies")
muffins = Recipe.new("muffins")
cake = Recipe.new("cake")
rice = Recipe.new("rice")

recipecard1 = RecipeCard.new(cookies, alex, 2)
recipecard2 = RecipeCard.new(muffins, colin, 6)
recipecard2 = RecipeCard.new(rice, colin, 6)
recipecard2 = RecipeCard.new(cake, colin, 8)
recipecard2 = RecipeCard.new(cookies, colin, 3)
recipecard3 = RecipeCard.new(muffins, yosef, 3)
recipecard3 = RecipeCard.new(cake, yosef, 5)


# seeding recipe card
cookies_recipe = RecipeIngredient.new(cookies, flour)
muffins_recipe = RecipeIngredient.new(muffins,sugar)
RecipeIngredient.new(cake, eggs)
RecipeIngredient.new(cake, flour)
cake.add_ingredient(sugar)




# seeding allergies
allergy1 = Allergy.new(alex, flour)
allergy2 = Allergy.new(colin, sugar)
allergy2 = Allergy.new(alex, sugar)
allergy3 = Allergy.new(yosef, baking_soda)


binding.pry
puts "blsdkgf"
