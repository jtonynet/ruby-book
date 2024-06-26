require 'forwardable'

class Motorista
  def coloca_cinto
    puts 'Colocando cinto ...'
  end
end

class Carro
  extend Forwardable

  def initialize
    @motorista = Motorista.new
  end

  def_delegators :@motorista, :coloca_cinto
end

carro = Carro.new
carro.coloca_cinto

############################ Operadores como metodos
puts "\n\n"

class CaixaDeParafusos
  protected
  attr_writer :quantidade

  public
  attr_reader :quantidade

  def initialize(quantidade)
    @quantidade = quantidade
  end

  def to_s
    "Quantidade de parafusos na caixa #{self.object_id}: #{@quantidade}"
  end

  def +(outra)
    nova = CaixaDeParafusos.new(@quantidade + outra.quantidade)
    @quantidade = 0
    outra.quantidade = 0
    nova
  end

  def /(quantidade)
    caixas = Array.new(quantidade, @quantidade / quantidade)
    (@quantidade % quantidade).times { |it| caixas[it] += 1 }
    @quantidade = 0
    caixas.map { |it| CaixaDeParafusos.new(it) }
  end
end

caixa1 = CaixaDeParafusos.new(10)
caixa2 = CaixaDeParafusos.new(20)
caixa3 = caixa1 + caixa2
puts caixa1
puts caixa2
puts caixa3

puts "Divisao:"
puts caixa3 / 4
