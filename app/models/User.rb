class User
    
    @@all = []

    attr_accessor :cards, :name, :allergies, :all


    def initialize(name)
        @cards = []
        @name = name
        @allergies = []
        @@all << self 
    end
    
    def declare_allergy(ingredient)
        if ingredient.allergy == nil
            allergy = Allergy.new(ingredient, self)
        else 
            ingredient.allergy.users << self
        end  
    end

    def recipes
        @cards
    end

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def top_three_recipes
        array = @cards.sort_by {|card_instance| card_instance.rating}
        array[array.length-3..array.length].reverse
    end 
    
    def most_recent_recipe
        @cards.last
    end 

    def safe_recipies
        unsafe_ingredients = self.allergies.map do |allergy_instance|
            allergy_instance.ingredient
        end 
        Recipe.all.select do |recipe_instance|
            all_ingredients = recipe_instance.ingredients.map do |recipe_ingredient_instance|
                recipe_ingredient_instance
            end 
           all_ingredients - unsafe_ingredients == all_ingredients
        end
    end 

    def self.all
        @@all
    end

end 