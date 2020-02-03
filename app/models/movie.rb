class Movie
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_actors
        hash = {}
        MovieChar.all.each do |yeet|
            if hash[yeet.title.title]  
                hash[yeet.title.title] += 1
            else
                hash[yeet.title.title] = 1
            end
        end
        hash.key(hash.values.max)
    end

end