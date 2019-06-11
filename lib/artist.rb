class Artist
    #artists names can be written or set equal to when each new instance is initialized
    attr_accessor :name
 #array of artist names
    @@all = []
   

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.map do |song|
            song.genre
        end
      end

end