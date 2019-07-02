class User
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name 
        User.all << self
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select do |rc|
            rc.user == self
        end
    end

    def add_recipe_card(date,rating,recipe)
        RecipeCard.new(date,rating,self,recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(self,ingredient)
    end

    def allergens_helper
        Allergy.all.select do |allergy|
            allergy.user == self
        end
    end

    def allergens 
        self.allergens_helper.map do |allergy|
            allergy.ingredient
        end
    end

    def top_three_recipes
        self.recipes.sort_by do |rc|
            rc.rating
        end.reverse.first(3)
    end

    def most_recent_recipe
        self.recipes.sort_by do |r|
            r.date
        end.last
    end
end