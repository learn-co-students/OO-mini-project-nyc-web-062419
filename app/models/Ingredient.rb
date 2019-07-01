class Ingredient
    attr_reader :name
    @@all = []
    def initialize name
        @name = name
        Ingredient.all << self
    end
    def self.all
        @@all
    end
end

# Ingredient
# Build the following methods on the Ingredient class

# Ingredient.all should return all of the ingredient instances
# Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to

