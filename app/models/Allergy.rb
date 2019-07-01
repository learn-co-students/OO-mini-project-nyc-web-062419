#is the join between a user and ingredient 

class Allergy

    attr_accessor :all, :ingredient, :users

    @@all = []
    
    def initialize(ingredient, user)
        @ingredient = ingredient
        @users = [] 
        @users << user 
        user.allergies << self
        ingredient.allergy = self 

    end


    def self.all
        @@all
    end

end 