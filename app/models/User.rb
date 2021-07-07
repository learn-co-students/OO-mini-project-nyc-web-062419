class User
    attr_reader :name
    @@all = []
    def initialize name
        @name = name
        User.all << self
    end
    def self.all
        @@all
    end
    def my_recipecards
      RecipeCard.all.select do |recipecards|
        recipecards.user == self
      end
    end
    def recipes
        my_recipecards.map do |recipe_instance|
            recipe_instance.recipe
        end
    end
    def add_recipe_card(recipe, rating)
        RecipeCard.new(recipe, self, rating)
    end
    def declare_allergy(ing)
        Allergy.new(self, ing)
    end
    def allergens
        Allergy.all.select {|allergy_instance| allergy_instance.user == self}
        .map {|a| a.ingredient}
    end
    def top_three_recipes
        my_recipecards.sort_by {|rec| rec.rating}.values_at(-1,-2,-3)
    end
    def most_recent_recipe
        my_recipecards.sort_by {|rec| rec.date}.last
    end   
end 

