class ImageHandle
  def initialize(matching, filetype)
    return self unless File.directory?(matching)
    # gets all files in specified directory, orders them by create date.
    @files = Dir.glob("#{matching}*.#{filetype}").sort_by{|c| File.stat(c).ctime}
  end
  def listall
    total_list = Array.new
    @files.each do |file|
      puts file
      total_list << file
    end
    total_list
  end
  def most_recent
    @files.last
  end
  def recent_offset(offset = 0)
    num = @files.length < offset ? 0 : @files.length - (offset + 1)
    @files[num]
  end
  def multi_offset(amount, offset = 0)
    image_list = Array.new
    for part in (1..amount)
      if(part < @files.length)
        image_list << recent_offset(offset)
      end
      offset += offset
    end
    image_list
  end
end
