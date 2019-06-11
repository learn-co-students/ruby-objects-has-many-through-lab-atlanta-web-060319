class Artist
    #artists names can be written or set equal to when each new instance is initialized
    attr_accessor :name
 #array of artist names
    @@all = []
   

    def initialize(name, genre)
        @name = name
        @genre = genre
        @@all << self
    end 

    def self.all
        @@all
    end

    def new_song(name, genre)
        Artist.new
    end

end

end