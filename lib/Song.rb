class Song
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist=(artist) if artist != nil
    self.genre=(genre) if genre != nil
    save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all.push(self)
  end

  def self.create(name)
    self.new(name)
  end

  def artist=(new_artist)
    @artist = new_artist
    new_artist.add_song(self)
  end

  def genre=(new_genre)
    @genre = new_genre
    new_genre.add_song(self)
  end

  def self.new_from_filename(filename)

  end
end
