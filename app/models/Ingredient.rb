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
    def self.most_common_allergy
        tracker = 0
        obj = nil
        Ingredient.all.each do |ing|
         count = Allergy.all.select {|a| a.ingredient == ing}.length
         tracker, obj = count,ing unless  count < tracker
        end
        obj
    end
end



# Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to

