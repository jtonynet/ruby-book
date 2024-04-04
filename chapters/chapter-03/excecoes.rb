def soma(valor1, valor2)
  valor1 + valor2
rescue
  nil
end
puts soma(1, 2)
puts soma(1, :um)
puts "------------\n\n"

def ok?(obj)
  !obj.nil?
end
puts ok?(1)
puts ok?("um")
puts ok?(:um)
puts ok?(nil)
puts "------------\n\n"

def test(args)
  one = args[:one]
  two = args[:two]
  puts "one: #{one} two: #{two}"
end
test(one: 1, two: 2)
test(two: 2, one: 1)
puts "------------\n\n"
