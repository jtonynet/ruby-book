array = (1..5)
array.each { |it| puts "O array contem o numero #{it}" }
puts "------------\n\n"

array = [1, 2, 3, 4, 5] # (1..5) dont works
count = 0
while count < array.size
  puts "o array contem o numero #{array[count]}"
  count += 1
end
puts "------------\n\n"

5.times { |it| puts "numero #{it}" }
puts "------------\n\n"

(1..21).step(2).each{ |it| puts "numero #{it}"}
puts "------------\n\n"

col = %w(uma lista de Strings para mostrar o for)
for str in col
  puts str
end
puts "------------\n\n"

col.each { |it| puts it }
puts "------------\n\n"

puts (1..10).select { |it| it.even? }
puts "------------\n\n"

puts ({ 1 => "um", 2 => "dois", 3 => "tres" }.select { |chave, valor| valor.length > 2 })
puts "------------\n\n"

natural_numbers = Enumerator.new do |yielder|
  number = 1
  loop do
    yielder.yield number
    number += 1
  end
end
p natural_numbers.lazy.select { |it| it.odd? }.take(5).to_a
puts "------------\n\n"

puts (0..10).reject { |it| it.even? }
puts "------------\n\n"

puts (0..10).map { |it| it * 2 }
puts "------------\n\n"

puts (0..10).detect { |it| it > 0 && it % 4 ==0 }
puts "------------\n\n"

puts (%w(joao maria antonio).max { |elemento1, elemento2| elemento1.length <=> elemento2.length })
puts "------------\n\n"

puts(%w(joao maria antonio).min { |elemento1, elemento2| elemento1.length <=> elemento2.length })
puts "------------\n\n"

puts ({ joao: 33, maria: 30, antonio: 25 }.max { |elemento1, elemento2| elemento1[1] <=> elemento2[1] })
puts "------------\n\n"
