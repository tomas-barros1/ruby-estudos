array_numeros = [1,2,3]

array_numeros.map! do |numero|
  numero ** 2
end

puts array_numeros