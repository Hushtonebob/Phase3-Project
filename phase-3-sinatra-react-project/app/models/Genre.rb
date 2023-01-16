class Genre < ActiveRecord::Base
    has_many :games
    has_many :platforms, through: :games
end