class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    song = Song.new
    song.save
  end

  def new_by_name(song_name)

  end

end
