require "pry"

class Artist
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song if song.artist == self }
    end


    def new_song(song_name, genre)
        Song.new(song_name, self, genre) 
    end

    def genres
        Song.all.collect { |song| song.genre if song.artist = self }
    end

end