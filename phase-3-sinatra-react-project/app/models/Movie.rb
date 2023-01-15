class Movie < ActiveRecord::Base
    belongs_to :genre
    belongs_to :release_year
end