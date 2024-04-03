valores = [1, 2, 3]
case valores
  in [_, dois, _]
    puts "O segundo valor é #{dois}"
end
puts "------------\n\n"


case [1, 2, 2]
  in [a, b, ^b]
    puts "Os valores com pin são: #{a} e #{b}"
end
puts "------------\n\n"


traducoes = [:br, 'Bom dia', :en, 'Good morning']
case traducoes
  in [Symbol, String, Symbol, String] => found
    puts found
end
puts "------------\n\n"
