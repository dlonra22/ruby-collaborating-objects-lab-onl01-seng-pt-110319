class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end
  
  def files
    @file = Dir.glob("#{@path}/*.mp3").collect do |file|
      file.gsub("#{@path}/","")
    end
  end