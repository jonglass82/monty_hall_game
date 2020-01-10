require "mini_magick"

stay = 0
switch = 0           
 
10000.times do                  

  doors = [ "goat", "goat", "car" ].shuffle
 
  guess = rand(3)
 
  begin shown = rand(3) end while shown == guess || doors[shown] == "car"

  doors[guess] == "car" ? stay += 1 : switch += 1
 
end
 

img = MiniMagick::Image.new("./results.jpg")

img.combine_options do |i|
   system("convert -size 800x200 xc:white results.jpg")
   i.pointsize 18
   i.draw "text 100,100 'Staying wins #{100.0 * stay/10000}% of the time and Switching wins #{100.0 * switch/10000}% of the time.'"
   i.write "./results.jpg"
end 








