class Carro
  attr_reader :marca, :modelo, :tanque, :criado
  attr_accessor :cor

  def initialize(marca, modelo, cor, tanque)
    @marca = marca
    @modelo = modelo
    @cor = cor
    @tanque = tanque
    @criado = Time.now
  end

  def initialize_copy(original)
    puts "criado objeto novo #{self.object_id} duplicado de #{original.object_id}"
    @criado = Time.now
  end

  def to_s
    "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
  end
end

carro = Carro.new(:chevrolet, :corsa, :preto, 50)
puts carro.criado
puts carro.object_id
sleep 1
outro_carro = carro.dup
puts outro_carro.criado
puts outro_carro.object_id


############################
puts "\n\n"

class MyClass
  def hello
    puts "Olá!"
  end

  def goodbye
    puts "Adeus!"
  end
end

obj = MyClass.new

# Chamando o método 'hello' diretamente
obj.hello

# Chamando o método 'goodbye' usando 'send'
obj.send(:goodbye)


############################
puts "\n\n"

class Teste
  def method_missing(meth, value = nil)
    sanitized = meth.to_s.split("=").first
    if meth =~ /=$/
      self.class.send(:define_method, meth) { |it| instance_variable_set("@#{sanitized}", it) }
      self.send(meth, value)
    else
      self.class.send(:define_method, sanitized) { instance_variable_get("@#{sanitized}") }
      self.send(meth)
    end
  end
end

t = Teste.new
t.oi = "oi, mundo!"
puts t.oi
puts t.hello
# t.hello = "hello,
