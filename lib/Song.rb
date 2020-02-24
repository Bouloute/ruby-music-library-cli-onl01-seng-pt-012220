class Song
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

  #def self.find_by_name(name)
  #  @@all.find{|song| song.name == name}
  #end

  #def self.find_or_create_by_name(name)
  #  found_song = self.find_by_name(name)
  #  return found_song if found_song != nil
  #  self.create(name)
  #end
end
