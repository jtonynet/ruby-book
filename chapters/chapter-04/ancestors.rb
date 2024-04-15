class Teste
end

class OutroTeste < Teste
end

p String.ancestors
p Teste.ancestors

p String.superclass
p Teste.superclass
p OutroTeste.superclass

puts "Classes que herdam de Teste:"
p Teste.subclasses
