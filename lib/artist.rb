class Artist
attr_accessor :name  

@@all = []

def initialize(name)
    @name = name
    @@all << self
end 

def self.all
    @@all
end 

def new_song(name, genre)
    # @songs << song
    # Song.new(name, genre)
    Song.new(name, self, genre)
    # song.artist = self 
end 

def songs
    Song.all.select do |song| song.artist == self 
    end
end 

def genres
    songs.all.collect do |song| song.genre
    end
end
#def genres
#    songs.map(&:genre)
# end

    # def self.all
    #     Song.all.select {|name| name.artist}
    # end 
end 