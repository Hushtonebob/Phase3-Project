class Movie < ActiveRecord::Base
    belongs_to :genre
    belongs_to :platform
    has_many :reviews

end