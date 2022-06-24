class User < ActiveRecord::Base
    has_many :journals
    has_many :journals, through: :plants
end