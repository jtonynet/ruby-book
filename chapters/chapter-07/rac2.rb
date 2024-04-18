# rodar desabilitando o warning experimental com:
# ruby -W0 rac2.rb

ractor = Ractor.new do
  Ractor.yield Time.now.strftime('%H:%M')
end

puts "A hora corrente no mundo do Ractor é #{ractor.take}"
ractor.take