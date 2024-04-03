i = 10

case i
when 0..5
  puts 'entre 0 e 5'
when 6..10
  puts 'entre 6 e 10'
else
  puts 'heim?'
end

# casetype
case i
when Integer
  puts 'Numero'
when String
  puts 'String'
else
  puts 'heim???'
end
