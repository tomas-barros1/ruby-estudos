puts 'Lista de compras'

file = File.open('shopping-list.txt')

# a de append
File.open('shopping-list.txt', 'a') do |line|
  line.puts('arroz')
  line.puts('feijão')
end

puts '-----------------------------'

file.each do |line|
  puts line
end
