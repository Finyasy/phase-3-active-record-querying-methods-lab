class Show < ActiveRecord::Base
    attr_accessor :name, :network, :day, :ratings
    # .highest_rating: This method should return the highest value in the ratings column.
    def self.highest_rating
        self.maximum(:ratings)
    end

    # .most_popular_show: this method should return the show with the highest rating.
    def self.most_popular_show
        self.find_by(ratings: self.highest_rating)
    end
end