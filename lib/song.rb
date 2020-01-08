
class Song
  attr_accessor :name, :artist 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song_and_art = filename.split(" - ")
    song = self.new(song_and_art[1])
    artist_name = song_and_art[0]
    @@all<< song
    song
    binding.pry
  end
  
  def artist_name=
    Artist.find_or_create_by_name(self.artist)
    Artist.add_song(self)
  end
  
end