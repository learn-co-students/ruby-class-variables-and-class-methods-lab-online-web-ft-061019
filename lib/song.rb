require 'pry'
class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end
  def name
    @name
  end 
  def artist
    @artist
  end 
  def genre
    @genre
  end
  def self.count 
    @@count
  end
  def self.artists 
    artist_array = []
    artist_array = @@artists
    artist_array.uniq
  end
  def self.genres
    genre_array = []
    genre_array = @@genres
    genre_array.uniq
    
  end
  def self.genre_count
    genre_hash = {}
    self.genres.each do |genre|
    genre_hash[genre] = @@genres.count {|g| g == genre}
  end
    genre_hash
    end 
  def self.artist_count
    artist_hash = {}
    self.artists.each do |artist|
    artist_hash[artist] = @@artists.count{|a| a == artist}
  end
    artist_hash
  end 
end 
