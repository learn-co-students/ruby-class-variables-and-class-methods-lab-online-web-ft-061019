class Song 
  attr_accessor :name, :genre, :artist
  @@count = 0
  def self.count 
    @@count
  end 
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@count +=1
  end 
  @@genres = []
  def count
    self.end
end 