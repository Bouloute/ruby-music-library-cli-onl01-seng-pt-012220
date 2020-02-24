class MusicImporter

  def initialize(path)
    #@files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    @path = path
  end
end