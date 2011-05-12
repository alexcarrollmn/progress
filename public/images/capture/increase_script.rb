require 'ftools'

Dir.chdir '/Users/Jesus/projects/progress/public/images/capture'

pic_name = Dir['/Users/Jesus/projects/progress/public/images/capture/clown.jpeg']

for i in (1..50)
  sleep 2
  File.copy(pic_name[0], "#{i}.jpeg")
  puts "#{i}.jpeg"
end

puts 'Finished!'