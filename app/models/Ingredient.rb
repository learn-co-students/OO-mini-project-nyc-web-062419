class Ingredient

    @@all = []

    attr_reader :name
    
    def initialize(name)
        @name = name
        Ingredient.all << self        
    end

    def self.all
        @@all
    end

    def allergies
        Allergy.all.select {|allergy| allergy.ingredient == self}
    end

    def allergic_users
        self.allergies.collect {|allergy| allergy.user}.uniq
    end

    def self.most_common_allergen
        candidate = self.all[0]
        self.all.each do |ingredient| 
            if ingredient.allergic_users.length > candidate.allergic_users.length
                candidate = ingredient
            end
        end        
        candidate
    end

end
