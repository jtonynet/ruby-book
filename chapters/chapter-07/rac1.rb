# rodar desabilitando o warning experimental com:
# ruby -W0 rac1.rb

ractor = Ractor.new do
  puts "Recebida mensagem: #{Ractor.receive}"
end

ractor.send "Olá, mundo dos Ractors!"
ractor.take
