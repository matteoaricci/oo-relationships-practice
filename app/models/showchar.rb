class ShowChar
    attr_reader :title, :character
    @@all = []

    def initialize(character, title)
        @title = title
        @character = character

        @@all << self
    end

    def self.all
        @@all
    end
end