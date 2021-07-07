class Allergy
  attr_accessor :ingredient
  attr_reader :user

    @@all = []

    def initialize(user, ingredient)
      @user = user
      @ingredient = ingredient
        Allergy.all << self
    end
    def self.all
        @@all
    end
end

# Allergy
# An Allergy is a join between a user and an ingredient. This is a has-many-through relationship. What methods should an instance of this model respond to?

# Allergy.all should return all of the Allergy instances
