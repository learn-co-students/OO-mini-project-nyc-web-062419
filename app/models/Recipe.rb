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

    def allergens
        arr = []
        ingredients.each do |ing|
        arr  << Allergy.all.find {|a| a.ingredient == ing}
        end
        arr.compact!
        arr.map {|a| a.ingredient}
    end

    def add_ingredient ing
        RecipeIngredient.new(self,ing)
    end
end
