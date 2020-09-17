class Genre
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|artist_song| artist_song.genre == self}
    end

    def artists
        self.songs.map {|song| song.artist}
    end
end