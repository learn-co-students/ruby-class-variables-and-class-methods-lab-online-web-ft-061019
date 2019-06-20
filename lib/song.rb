require 'pry'
class Song 
  attr_accessor :name, :genre, :artist
  @@count = 0
  def self.count 
    @@count
  end 
  @@genres = []
  @@artists = []
  def initialize(name, artist, genres)
    @name = name 
    @artist = artist
    @genre = genres 
    @@count +=1
    @@genres << @genre
    @@artists << @artist
  end 
  def self.artist
  @artits.uniq
  end
  
#binding.pry
end 