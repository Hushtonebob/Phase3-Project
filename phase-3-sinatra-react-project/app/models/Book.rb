class Book < ActiveRecord::Base
    belongs_to :genres
    belongs_to :release_years
    belongs_to :movies
end