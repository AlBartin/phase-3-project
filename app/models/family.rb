class Family < ActiveRecord::Base
    has_many :types
    has_many :plants, through: :types
end