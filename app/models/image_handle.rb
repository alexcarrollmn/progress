class ImageHandle
  def initialize(matching)
    return self unless File.directory?(matching)
    @files = Dir.glob("#{matching}*.jpeg")
  end
  def listall
    @files.each do |file|
      puts file
    end
  end
  def most_recent
    puts @files.last
  end
  def recent_offset(offset = 0)
    num = @files.length < offset ? 0 : @files.length - offset - 1
    puts @files[num]
  end
end
