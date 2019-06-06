class Artist
	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def new_song(name, genre)
		Song.new(name, self, genre)
	end

	def self.all
		@@all
	end

	def songs
		Song.all.select {|song|
			song.artist == self
		}
	end

	def genres
		genres = []
		Song.all.each {|song|
			genres.push(song.genre) if song.artist == self
		}
		genres
	end
end