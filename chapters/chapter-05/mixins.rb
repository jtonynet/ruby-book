class Primata
  def come
    puts "Nham!"
  end

  def dorme
    puts "Zzzzzz..."
  end
end

class Humano < Primata
  def conecta_na_web
    puts "Login ... senha ..."
  end
end

module Ave
  def voa
    puts "Para o alto, e avante!"
  end
end

class Mutante < Humano
  include Ave
end

mutante = Mutante.new
mutante.come
mutante.dorme
mutante.conecta_na_web
mutante.voa

###############################
puts "\n\n"

module TesteMod
  module ClassMethods
    def class_method
      puts "Esse é um método da classe!"
    end
  end

  def self.included(where)
    where.extend(ClassMethods)
  end

  def instance_method
    puts "Esse é um método de instância!"
  end
end

class TesteCls
  include TesteMod
end

t = TesteCls.new
t.instance_method
TesteCls.class_method

#################################
puts "\n\n"

class Parafuso
  attr_reader :polegadas

  def initialize(polegadas)
    @polegadas = polegadas
  end

  def <=>(outro)
    self.polegadas <=> outro.polegadas
  end

  def to_s
    "Parafuso #{object_id} com #{@polegadas}\""
  end
end

class CaixaDeParafusos
  include Enumerable

  def initialize
    @parafusos = []
  end

  def <<(parafuso)
    @parafusos << parafuso
  end

  def each
    @parafusos.each { |it| yield(it) }
  end
end

caixa = CaixaDeParafusos.new
caixa << Parafuso.new(1)
caixa << Parafuso.new(2)
caixa << Parafuso.new(3)

puts "o menor parafuso na caixa é: #{caixa.min}"
puts "o maior parafuso na caixa é: #{caixa.max}"
puts "os parafusos com medidas par são: #{caixa.select { |it| it.polegadas % 2 == 0}.
join(',')}"
puts "duplicando a caixa: #{caixa.map { |it| Parafuso.new(it.polegadas * 2).to_s }}"
