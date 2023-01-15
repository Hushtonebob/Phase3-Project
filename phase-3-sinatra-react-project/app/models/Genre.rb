class Genre < ActiveRecord::Base
    has_many :movies
    has_many :release_years, through: :movies
end