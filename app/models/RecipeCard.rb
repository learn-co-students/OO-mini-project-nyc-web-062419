class RecipeCard
    attr_reader :date,:rating,:recipe, :user 

    @@all = []
    def initialize recipe,user,rating
        @date = Time.now.getutc
        @recipe,@user,@rating = recipe,user,rating
        RecipeCard.all << self
    end
    def self.all
        @@all
    end
end

# RecipeCard
# A RecipeCard is the join between a user instance and a recipe instance. This is a has-many-through relationship. Build the following methods on the RecipeCard class:



# RecipeCard#rating should return the rating (an integer) a user has given their entry
# RecipeCard#user should return the user to which the entry belongs
