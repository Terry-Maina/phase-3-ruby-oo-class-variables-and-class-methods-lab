class Song
    attr_accessor :names, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
   

    def initialize(names, artist, genre)
        @names = names
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
       

    end

    def name
        @names
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
      end

      def self.artists
        @@artists.uniq
      end

     def self.genre_count
        count = Hash.new(0)
        @@genres.each { |genre| count[genre] += 1 }
        count
     end

      def self.artist_count
        count = Hash.new(0)
        @@artists.each { |a| count[a] += 1 }
        count
      end

  
end
Footer
© 2023 GitHub, Inc.
Footer navigation
