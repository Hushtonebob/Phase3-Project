class Game < ActiveRecord::Base
    belongs_to :genre
    belongs_to :platform

    def what_genre?
        "#{self.title} is a #{self.platform.name} game that is also a #{self.genre.category} game."
    end

end