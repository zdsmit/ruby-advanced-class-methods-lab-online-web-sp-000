class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    Song.all.detect {|song|return song if song.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) or self.create_by_name(name)
  end

  def self.alphabetical
    Song.all.sort_by{|song|song.name}
  end

  def new_by_filename(file_name)
    new_song = file_name.split(" - ")
    artist = new_song[0]
    new_song[1].delete(".mp3")
    song_name = new_song[1].delete(".mp3")
  end

end
