i = 0
while i < 5
  puts i
  i += 1
end
puts "------------\n\n"

for i in (0..5)
  puts i
end
puts "------------\n\n"

for i in (0..5)
  break if i == 3
  puts i
end
puts "------------\n\n"

for i in (0..5)
  next if i == 3
  puts i
end
puts "------------\n\n"

# for i in (0..5)
#   redo if i == 3 # This line generates infinite loop
#   puts i
# end
# puts "------------\n\n"

i = 0
until i == 5
  puts i
  i += 1
end
puts "------------\n\n"
