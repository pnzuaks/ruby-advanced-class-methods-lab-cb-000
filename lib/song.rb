class Song
  
  @@all = []
  
  def self.all
    @@all
  end
  
   def self.create()
    new_song = self.new()
    @@all << new_song
    new_song
  end
  
  def self.new_by_name(name)
    new_song = self.new()
    new_song.name = name
    new_song
  end
  
  def self.create_by_name(name)
    new_song = self.new_by_name(name)
    @@all << new_song
    new_song
  end
  
  def self.find_by_name(song_name)
    @@all.detect{song_name}
  end
  
  attr_accessor :name, :artist_name
 

  def save
    self.class.all << self
  end
  
  
end
