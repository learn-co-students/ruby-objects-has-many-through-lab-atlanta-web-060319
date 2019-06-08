#has many songs
#has many artists through :: songs
class Genre
    attr_reader :name, :genre
    attr_accessor :song, :all

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        Song.all.map do |song|
            song.artist
        end
    end

    def self.all
        @@all
    end
end
