class Actor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_characters
        hash = {}
        Character.all.each { |yeet|
            if hash[yeet.actor.name]
                hash[yeet.actor.name] += 1
            else
                hash[yeet.actor.name] = 1
            end
        }
        hash.key(hash.values.max)

    end
end