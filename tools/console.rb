require_relative '../config/environment.rb'
# seeding users
alex = User.new("Alex")
colin = User.new("Colin")
yosef =User.new("Yosef")

# seeding allergies
allergy1 = Allergy.new(alex, flour)
allergy2 = Allergy.new(colin, sugar)
allergy3 = Allergy.new(yosef, baking_soda)

# seeding recipies
cookies = Recipe.new("cookies")
muffins = Recipe.new("muffins")
cake = Recipe.new("cake")

# seeding ingredients
flour = Ingredient.new("flour")
sugar = Ingredient.new("sugar")
baking_soda = Ingredient.new("baking soda")
butter = Ingredient.new("butter")
eggs = Ingredient.new("eggs")
vanilla = Ingredient.new("vanilla")

# seeding recipe card
cookies_recipe = RecipeIngredient.new("cookies recipe")
muffins_recipe = RecipeIngredient.new("muffins recipe")
cake_recipe = RecipeIngredient.new("cake recipe")
# seeding recipe ingredient

binding.pry
