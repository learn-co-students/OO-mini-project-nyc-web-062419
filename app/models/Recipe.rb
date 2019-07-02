require "pry"

class Recipe
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        Recipe.all << self
    end

    def self.all
        @@all
    end

    def users
        recipe_card = RecipeCard.all.select do |recipeCard|
            recipeCard.recipe == self
        end
        users = recipe_card.map do |recipe_card|
            recipe_card.user
        end
        users.uniq
    end

    def self.most_popular
        Recipe.all.sort_by do |recipe|
            recipe.users.count
        end.last
    end

    def ingredients
        RecipeIngredient.all.select do |ri|
            ri.recipe == self
        end
    end

    def ingredient_list
        self.ingredients.map do |ri|
            ri.ingredient
        end
    end

    def allergen
        #find the ingredients in our recipe instance
        #self.ingredients
        #check each ingredient and see if they have an allergen instnace associated with it 
        #
        #return this list

        testArray = self.ingredients.map do |ingredient|
            Allergy.all.each do |allergen|
               if allergen.ingredient == ingredient
                    ingredient
               end
            end
        end
        testArray
    end

    def add_ingredients(array)
        RecipeIngredient.all.map do |ri|
            if ri.recipe == self
                ri.ingredient << array
            end
        end.flatten.compact
    end
end