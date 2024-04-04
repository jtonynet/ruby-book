require 'benchmark'

a = (1..1_000_000).to_a.shuffle
Benchmark.bm do |x|
  x.report("min:") { 1000.times { a.min } }
  x.report("max:") { 1000.times { a.max } }
end
puts "------------\n\n"

puts((0..10).inject { |soma, valor| soma + valor })
puts "------------\n\n"

puts((0..10).inject(100) { |soma, valor| soma + valor })
puts "------------\n\n"

puts((0..10).partition(&:even?))
puts "------------\n\n"

(0..10).each_with_index { |item, indice| puts "#{item} indice #{indice}" }
puts "------------\n\n"

puts(%w[joao maria antonio].sort)
puts "------------\n\n"

puts(%w[antonio maria joao].sort_by { |it| it.length })
puts "------------\n\n"

puts 'Numeros da Mega Sena:'
puts((1..60).to_a.shuffle.take(6))
puts "------------\n\n"
