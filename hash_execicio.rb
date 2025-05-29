hash = {}

hash[:primeiro] = "1"
hash[:segundo] = "2"

hash.each do |chave, valor|
  puts "Uma das chaves é #{chave} e o seu valor é #{valor}"
end