def image_compare(dir, filetype, image_base, image_compare)
  puts "#{dir}#{image_base}.#{filetype}"
  base_img = Magick::Image.read("#{dir}#{image_base}.#{filetype}").first
  current_img = Magick::Image.read("#{dir}#{image_compare}.").first

  current_img.difference(base_img)
end
