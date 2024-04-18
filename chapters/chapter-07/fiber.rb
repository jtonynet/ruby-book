enum1 = 3.times
enum2 = %w(zero um dois).each
puts enum1.class

loop do
  puts enum1.next
  puts enum2.next
end

###########
puts "\n\n"

fib = Fiber.new do
  x, y = 0, 1

  loop do
    # envia o valor de y para resume
    puts 'Indo para o resume'
    Fiber.yield y

    # volta aqui depois do resume
    puts 'Voltei do resume'
    x, y = y, x + y
  end
end

10.times { puts fib.resume }
