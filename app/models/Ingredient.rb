

class Ingredient
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        Ingredient.all << self
    end

    def self.all
        @@all
    end

    def self.all_allergies
        Allergy.all.map do |allergy|
            allergy.ingredient
        end
    end

    def self.most_common_allergen
        self.all_allergies.uniq.max_by do |i|
            self.all_allergies.count(i)
        end
    end
end