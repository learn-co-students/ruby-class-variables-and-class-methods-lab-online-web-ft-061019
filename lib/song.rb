class Song
   attr_accessor  :name, :artist, :genre

   @@artists = []
   @@genres = []
   @@count = 0

   def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1

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
      genre_array = self.genres
      genre_count_hash = {}

      genre_array.each do |genre|
         total_count = @@genres.count(genre)
         genre_count_hash[genre] = total_count
      end
      genre_count_hash
   end

   def self.artist_count
      artists_array = self.artists
      artist_count_hash = {}
      
      artists_array.each do |artist_name|
         total_songs = @@artists.count(artist_name)
         artist_count_hash[artist_name] = total_songs
      end
      artist_count_hash
   end

end