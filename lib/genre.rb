
class Genre
    attr_accessor :name, :artist, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song if song.genre == self}
    end

    def artists
        Song.all.collect { |song| song.artist }
    end

end