class Recipe
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Recipe.all << self
    end

    def my_recipecards
      RecipeCard.all.select do |recipecards|
        recipecards.recipe == self
      end
    end

    def users
      my_recipecards.map do |recipecards|
        recipecards.user
      end
    end

    def self.most_popular
        tracker = 0
        obj = nil
        Recipe.all.each do |recipe|
         count = RecipeCard.all.select {|rc| rc.recipe == recipe}.length
         tracker, obj = count,recipe unless  count < tracker
        end
        obj
    end


    def my_recipeingredients
      RecipeIngredient.all.select do |recipeingredients|
        recipeingredients.recipe == self
      end
    end

    def ingredients
      my_recipeingredients.map do |recipeingredients|
        recipeingredients.ingredient
      end
    end 



    def self.all
        @@all
    end


end


# Recipe
# Build the following methods on the Recipe class





# Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
