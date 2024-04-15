module Automovel
  def ligar
    puts "Ligando automóvel #{@marca}"
  end
end

module Radio
  def ligar
    puts "Ligando rádio #{@marca}"
  end
end

class Carro
  include Automovel
  include Radio

  def initialize
    @marca = :vw
  end

  def ligar
    Automovel.instance_method(:ligar).bind(self).call
    super
  end
end

Carro.new.ligar

#################
puts "\n\n"

require 'erb'

class User
  def initialize
    @name = 'taq'
  end

  def resolve_binding
    binding
  end
end

user = User.new
erb = ERB.new "Olá, <%= @name %>!"
puts erb.result(user.resolve_binding)

#################
puts "\n\n"

module Inception
  extend self

  def hello
    puts 'hello'
  end

  def world
    puts 'world'
  end
end

Inception.hello
Inception.world

#################
puts "\n\n"

require 'singleton'
class Teste
  include Singleton
end

begin
  Teste.new
rescue StandardError => e
  puts "Não consegui criar usando new: #{e}"
end

puts Teste.instance.object_id
puts Teste.instance.object_id
