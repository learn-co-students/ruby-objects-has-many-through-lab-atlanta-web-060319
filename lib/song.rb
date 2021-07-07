class Song

    attr_accessor :name, :genre
    attr_reader :artist
    
    @@songs = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@songs << self
    end

    def self.all
        @@songs
    end
    
end

