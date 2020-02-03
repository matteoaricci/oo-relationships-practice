class Character
    attr_reader :name, :actor, :movie, :show
    @@all = []

    def initialize(name, actor, movie = nil, show = nil)
        @name = name
        @actor = actor
        @movie = movie
        @show = show

        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        hash = {}
        MovieChar.all.each do |yeet|
            if hash[yeet.character.name]  
                hash[yeet.character.name] += 1
            else
                hash[yeet.character.name] = 1
            end
        end

        ShowChar.all.each do |yeet|
            if hash[yeet.character.name]
                hash[yeet.character.name] += 1
            else
                hash[yeet.character.name] = 1
            end
        end
        hash.key(hash.values.max)
    end
end