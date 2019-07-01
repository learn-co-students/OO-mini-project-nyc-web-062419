class User

    @@all = []

    attr_reader :name
    attr_accessor :fridge

    def initialize(name, fridge = [])
      @fridge = fridge
      @name = name
      User.all << self     
    end

    def self.all
        @@all
    end

    def allergies
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def allergens
        self.allergies.collect {|allergen| allergen.ingredient}.uniq
    end

    def recipe_cards
       RecipeCard.all.select {|card| card.user == self} 
    end

    def recipes
        self.recipe_cards.collect {|card| card.recipe}
    end

    def add_recipe_card (recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def top_three_recipes
        sorted_recipes = self.recipe_cards.sort_by{|card| card.rating}.reverse
        sorted_recipes[0..2]
    end

    def most_recent_recipe
        self.recipe_cards.sort_by{|card| card.date.to_s}.last
    end



    def safe_recipes
        Recipe.all.select {|recipe| recipe.ingredients.none?{|ingredient| self.allergens.include?(ingredient)}}
    end

    def shopping_list
        self.recipes.collect {|recipe| recipe.remaining_ingredients(fridge)}.flatten.uniq
    end

    def stock_fridge(ingredients)
        ingredients.uniq.each {|ingredient| self.fridge << ingredient}
    end

end