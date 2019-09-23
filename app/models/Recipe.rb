class Recipe

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        Recipe.all << self        
    end

    def self.all
        @@all
    end

    def cards
        RecipeCard.all.select {|card| card.recipe == self}
    end

    def users
        self.cards.collect {|card| card.user}.uniq
    end

    def recipe_ingredients
        RecipeIngredient.all.select {|ri_instance| ri_instance.recipe == self}
    end

    def ingredients
        self.recipe_ingredients.collect {|ri_instance| ri_instance.ingredient}.uniq
    end

    def self.most_popular
        candidate = self.all[0]
        self.all.each do |recipe|
            if recipe.cards.length > candidate.cards.length
                candidate = recipe
            end
        end
        candidate
    end

    def allergens

        self.ingredients.select{|ingredient| Allergy.allergens.include? ingredient}

    end

    def add_ingredients(ingredient_array)

        ingredient_array.each {|ingredient| RecipeIngredient.new(self, ingredient)}

    end

    def self.only_uses(ingredient_array)

        self.all.select{|recipe| recipe.ingredients.all?{|ele| ingredient_array.include? (ele)}}

    end

    def remaining_ingredients(ingredient_array)
        self.ingredients.reject {|ingredient| ingredient_array.include?(ingredient)}
    end

    def self.dinner_party(guest_list)
        self.all.select do |recipe| 
            guest_list.all? {|guest| guest.safe_recipes.include?(recipe)}
        end
    end

    def self.find_recipes_by_name(name)
        self.all.select {|recipe| recipe.name == name}
    end

    def self.ingredient_variations(name)
        self.find_recipes_by_name(name).collect {|recipe| recipe.ingredients}
    end

    def possible_substitutions

        alternates = {}

        self.ingredients.each do |ingredient|

            alternates[ingredient] = []

        end

        self.ingredients.each do |ingredient|

            remainder = self.ingredients.delete(ingredient)

            alts = self.ingredient_variations(self.name).select do |alt_list|

                remainder.all? {|ele| alt_list.include?(ele)}

            end

            alts = alts.delete(self)

            subs = alts.collect do |alt|

                alt.reject {|ingredient| remainder.include? ingredient}

            end

            alternatives[ingredient] = subs

        end



        


    end

end