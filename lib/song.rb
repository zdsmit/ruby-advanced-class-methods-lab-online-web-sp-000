class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create(name)
    @@all << self.new
    name
  end

  def new_by_name(song_name)

  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
