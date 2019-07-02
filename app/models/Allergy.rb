class Allergy

    @@all = []

    attr_reader :user, :ingredient
   
    def initialize (user, ingredient)
        @user = user
        @ingredient = ingredient
        Allergy.all << self        
    end

    def self.all
        @@all
    end

    def self.allergens
        self.all.collect{|alergry| alergry.ingredient}.uniq
    end
 
end