class RecipeIngredient

    attr_accessor :all, :recipe, :ingredient 

    @@all = []
    
    def initialize(recipe, ingredient)
        @recipe = recipe 
        @ingredient = ingredient
        recipe.ingredients << self 
        @@all << self  
    end 

    def self.all
        @@all
    end

end 