class Song
  @@count = 0
  attr_accessor :name, :genre, :artist

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  @@genres = []

  def self.genres
    @@genres.uniq
  end

  @@artists = []

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre = {}
    self.genres.each do |individual_genre|
     genre[individual_genre] = @@genres.count {|element| element == individual_genre}
    end
    return genre
  end

  def self.artist_count
    artist = {}
    self.artists.each do |individual_artist|
     artist[individual_artist] = @@artists.count {|element| element == individual_artist}
    end
    return artist

  end

end
