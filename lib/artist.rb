class Artist
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist}
    end

    def genres
        self.songs.map {|song| song.genre}
    end
end