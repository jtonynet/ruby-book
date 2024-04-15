class C
  def x
    'x'
  end
end

module M
  def x
    "[#{super}]"
  end

  def y
    'y'
  end
end

class C
  include M
end

p C.ancestors
c = C.new
puts c.x
puts c.y

########################
puts "\n\n"

module Automovel
  def ligar
    puts "ligando automóvel"
  end
end

module Radio
  def ligar
    puts "ligando rádio"
  end
end

class Carro
  include Automovel
  include Radio
end

c = Carro.new
c.ligar
puts"\n\n"
puts Carro.ancestors
