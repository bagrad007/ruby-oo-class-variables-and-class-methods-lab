class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash[genre]
            genre_hash[genre]+=1
            else 
                genre_hash[genre] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        songs_hash = {}
        @@artists.each do |song|
            if songs_hash[song]
                songs_hash[song]+=1
            else
                songs_hash[song] = 1
            end
        end
        songs_hash
    end

end