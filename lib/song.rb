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
  
  def self.find_by_name(name)
    @@all.detect{name}
  end
  
  def self.find_or_create_by_name(name)
    if @@all.detect{name} == nil 
      self.create_by_name(name)
    else
      @@all.detect{name}
    end
  end
  
  attr_accessor :name, :artist_name
 

  def save
    self.class.all << self
  end
  
  
end
