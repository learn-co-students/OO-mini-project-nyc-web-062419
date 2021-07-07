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