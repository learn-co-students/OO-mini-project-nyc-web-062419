class Recipe

    attr_accessor :name, :cards, :all, :ingredients 
    
    @@all = []

    ##When a User makes use of a Recipe, it creates a recipe card. 

    def initialize(name)
        @ingredients = []
        @cards = []
        @name = name 
        @@all << self 
    end 
    
    def self.all
        @@all
    end 

    def self.most_popular
        @@all.max_by do |recipe_instance|
            recipe_instance.cards.length 
        end 
    end 

    def add_ingrediants(ingredient_array)
        ingredient_array.each do |ingredient_instance|
            recipe_ingredient = RecipeIngredient.new(self, ingredient_instance)
            @ingredients << recipe_ingredient
        end 
    end
    
    def allergens
        RecipeIngredient.all.select do |recipe_ingredient_instance|
            @ingredients.include?(recipe_ingredient_instance) && recipe_ingredient_instance.ingredient.allergy != nil
        end.map {|recipe_ingredient_instance| recipe_ingredient_instance.ingredient}
        # go through all the @@ingredients
        # if ingredients.allergens != and  @ingredients.includes? 
    end

    def ingredients
        @ingredients.map do |recipe_ingredient_instance|
            recipe_ingredient_instance.ingredient
        end 
    end

end 