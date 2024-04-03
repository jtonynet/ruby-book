puts 'Array String: '
array = %w[um dois tres]
p *array
puts "------------\n\n"
# Returns:
# "um"
# "dois"
# "tres"
# ------------

puts 'Hash With Symbols: '
hash = { :um => 1, :dois=> 2, :tres=> 3 }
p *hash
puts "------------\n\n"
# Returns:
# [:um, 1]
# [:dois, 2]
# [:tres, 3]
# ------------

# And when we use it before a variable name, it "sucks" the excess values, acting
# like a "black hole". Testing with a simple assignment:
puts 'Black Hole: '
array2 = [1, 2, 3, 4]
a, b, *c = *array2
puts a
puts b
puts '---'
puts c
puts "------------\n\n"
# Returns:
# 1
# 2
# ---
# 3
# 4
# ------------

puts 'Pattern matching: '
{ [1, 2, 3, 4] => [a, b, *c] }
puts a
puts b
puts c
puts "------------\n\n"
# Returns:
# 1
# 2
# 3
# 4
# ------------

puts 'traducoes'
traducoes = [:br, 'Bom dia', :en, 'Good morning']
case traducoes
  in [:br, texto_br, :es, texto_es]
    puts "'#{texto_br}' em Espanhol é '#{texto_es}'"
  in [:br, texto_br, :en, texto_en]
    puts "'#{texto_br}' em Inglês é '#{texto_en}'"
  else
    puts "Sem tradução"
end
# Returns:
# traducoes
# 'Bom dia' em Inglês é 'Good morning'
