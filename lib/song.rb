require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artists_count = {}

    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist 
        @@genres << genre 
    end

    def self.count
        @@count
    end
    
    def self.genre_count
        @@genres.each do |genre_token|
            if !@@genre_count.include?(genre_token)
                @@genre_count[genre_token] = 1 
            else
                @@genre_count[genre_token] += 1
            end
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each do |artist_token|
            if !@@artist_count.include?(artist_token)
                @@artist_count[artist_token] = 1 
            else
                @@artist_count[artist_token] += 1
            end
        end
        @@artist_count
    end

    def self.artists
        self.artist_count.keys
    end

    def self.genres
        self.genre_count.keys
    end
end