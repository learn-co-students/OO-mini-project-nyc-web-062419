class Recipe
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Recipe.all << self
    end
    def self.all
        @@all
    end
end


# Recipe
# Build the following methods on the Recipe class


# Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
# Recipe#users should return the user instances who have recipe cards with this recipe
# Recipe#ingredients should return all of the ingredients in this recipe
# Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
