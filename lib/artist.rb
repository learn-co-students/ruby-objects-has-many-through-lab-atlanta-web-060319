
class Artist

 attr_accessor :name

 @@all = []

  def initialize(name)
      @name = name
      @@all << self #keep track of all the instance of Artist
   end

   def self.all #all method all artist to know about each other
       @@all
   end

   def new_song(name,genre)
      Song.new(name,self, genre)
   end

   def songs
      Song.all.select {|song| song.artist == self}
   end

   def genres
     songs.map {|song| song.genre}
   end
end
