class Platform < ActiveRecord::Base
has_many :games
has_many :genres, through: :games
end