#songs belong to artist and to genre
require "pry"
class Song
    attr_accessor :name, :artist, :genre
    # attr_reader :all

    @@all = []

    def initialize(name="", artist="", genre="")
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def artist
        @artist
    end
    
end