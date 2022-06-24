class Type < ActiveRecord::Base
    belongs_to :family
    has_many :plants
end