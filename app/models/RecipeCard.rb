class RecipeCard
    attr_accessor :rating, :recipe, :user
    attr_reader :date
    @@all = []
    def initialize(date=Time.now,rating=nil,user,recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        RecipeCard.all << self
    end

    def self.all
        @@all
    end
end