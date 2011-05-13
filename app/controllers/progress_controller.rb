class ProgressController < ApplicationController
  def index
    img = ImageHandle.new('public/images/capture/', 'jpeg')
    @foo = img.multi_offset(2,4)
    
    @bar = img.listall

    image_compare(img.most_recent, img.recent_offset(10)).each do |hi|
      puts hi.to_s + "foo" 
    end
  end

  def short
  end

  def graph
  end

  def day
  end

  def image_compare(image_base, image_compare)
    base_img = Magick::Image.read("#{image_base}").first
    current_img = Magick::Image.read("#{image_compare}").first

    current_img.difference(base_img)
  end
end
