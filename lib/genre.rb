class Genre 

attr_accessor :name, :songs

@@all = []

def initialize(name)
    @name = name
    @songs = []
    @@all << self
end 

def self.all
    @@all
end

# selects the aongs that match that genre
def songs
    Songs.all.select {|song| song.genre == self}
  end 
end 

# comes after #songs because it's referencing that array
# collects the artists that own those songs
def artists
    songs.map do |artist| artist.genre
  end 
end 
# def artists
#     songs.map(&:genre)
# end 

    # def self.all
    #     Songs.all.select {|type| type.genre}
    # end 

def add_song(song)
    songs << song
end 



end 
