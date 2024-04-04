vezes5 = lambda { |it| puts it * 5 }
vezes5.(5)
puts "------------\n\n"
(1..5).map &vezes5
puts "------------\n\n"

def testando_proc
  p = Proc.new { return 'Bum!' }
  p.call
  puts 'Nunca imprime isso!'
end
puts testando_proc
puts "------------\n\n"

def testando_lambda
  l = lambda { return 'Oi!' } #nao imprime, apenas executa
  l.call
  puts 'Imprime isso!'
end
puts testando_lambda
puts "------------\n\n"

p = ->(x, y) { x * y }
puts p.call(2, 3)
puts "------------\n\n"

mult = ->(n1, n2) { n1*n2 }
puts mult.(2, 3)
puts "------------\n\n"

mult = ->(n1, n2) { n1 * n2 }.curry
puts mult.(2).(3)
puts "------------\n\n"
dobro = mult.(2)
triplo = mult.(3)
puts dobro.(1)
puts triplo.(1)
puts "------------\n\n"

