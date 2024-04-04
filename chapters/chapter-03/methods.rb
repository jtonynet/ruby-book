def vezes(p1, p2)
  p1 * p2
end
puts vezes(2, 3)
puts "------------\n\n"

def cinco_multiplos(numero)
  (1..5).map { |it| it * numero }
end
v1, v2, v3, v4, v5 = cinco_multiplos(5)
puts v1, v2, v3, v4, v5
puts "------------\n\n"

def vezes(n1, n2)
  n1 * n2
end
puts vezes(3, 4)
puts "o metodo recebe #{method(:vezes).arity} parametros"
puts "------------\n\n"

def configure(options = {})
  width = options[:width] || 10
  height = options[:height] || 10
  puts "Comprimento: #{width} Altura #{height}"
end
configure(width: 50)
puts "------------\n\n"

def configure(**options)
  width = options[:width] || 10
  height = options[:height] || 10
  puts "Comprimento: #{width} Altura: #{height}"
end
configure(width: 30, height: 40)
configure
puts "------------\n\n"

def receber(*args)
  puts "Recebidos: #{args.join(',')}"
end

def enviar(...)
  puts "Estou enviando ..."
  receber(...)
end
enviar(1)
enviar(1, 2)
puts "------------\n\n"
