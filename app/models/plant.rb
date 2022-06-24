class Plant < ActiveRecord::Base
    belongs_to :type
    belongs_to :light
    belongs_to :water
    belongs_to :soil
    has_many :journal


    def water_requirement
        "#{self.name} requires #{self.water.name} soil. You can achieve this by watering it every #{self.water.amount} days."
    end

    def best_soil
        "The best soil mix for #{self.name} is a #{self.soil.name}."
    end

    def soil_ingredients
        self.soil.ingredients.each do  |x| 
            puts x 
        end
    end
end
