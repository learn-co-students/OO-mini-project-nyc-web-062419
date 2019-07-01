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

recipecard1 = RecipeCard.new(cookies, alex, 2)
recipecard2 = RecipeCard.new(muffins, colin, 6)
recipecard3 = RecipeCard.new(muffins, yosef, 3)


# seeding recipe card
cookies_recipe = RecipeIngredient.new(cookies, flour)
muffins_recipe = RecipeIngredient.new(muffins,sugar)
cake_recipe = RecipeIngredient.new(cake, eggs)


# seeding allergies
allergy1 = Allergy.new(alex, flour)
allergy2 = Allergy.new(colin, sugar)
allergy3 = Allergy.new(yosef, baking_soda)

binding.pry
puts "blsdkgf"
