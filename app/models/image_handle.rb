class ImageHandle
  def initialize(matching, filetype)
    return self unless File.directory?(matching)
    @files = Dir.glob("#{matching}*.#{filetype}")
  end
  def listall
    @files.each do |file|
      file
    end
  end
  def most_recent
    @files.last
  end
  def recent_offset(offset = 0)
    num = @files.length < offset ? 0 : @files.length - offset - 1
    @files[num]
  end
  def multi_offset(amount, offset = 0)
    for part in (1..amount)
      if(part < @files.length)
        recent_offset(offset)
      end
      offset += offset
    end
  end
end
