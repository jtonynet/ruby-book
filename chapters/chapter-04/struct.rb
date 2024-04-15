Carro = Struct.new(:marca, :modelo, :cor, :tanque)
corsa = Carro.new(:chevrolet, :corsa, :preto, 50)
p corsa
puts "------------\n\n"

Carro2 = Struct.new(:marca, :modelo, :cor, :tanque) do
  def ligar
    puts "Ligando o carro modelo #{modelo} ..."
  end
end
corsa2 = Carro2.new(:chevrolet, :corsa2, :preto, 50)
corsa2.ligar
puts "------------\n\n"

Carro3 = Struct.new(:marca, :modelo, :cor, :tanque) do
  def initialize(...)
    super
    freeze
  end
end
corsa = Carro3.new(:chevrolet, :corsa, :preto, 50)
# corsa.marca = :fiat # its expect `can't modify frozen Carro3:`
puts "------------\n\n"
