class Ingredient

    attr_accessor :all, :name, :allergy 

    @@all = []
    
    def initialize(name)
        @name = name
        @allergy = nil
        @@all << self 
    end 

    def self.all
        @@all
    end

    def self.most_common_allergen
        @@all.max_by do |ingredient_instance|
            ingredient_instance.allergy.users.length 
        end 
    end 

end 
