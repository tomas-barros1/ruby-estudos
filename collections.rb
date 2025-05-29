estados = []

estados.push("Acre")

estados.insert(0, "Bahia")

estados.push("Minas")

estados.push("São Paulo")

print(estados)

puts estados.first

puts estados.last

puts estados.empty?

estados.include?("Pernambuco")

estados.delete_at(1)

estados.pop()

puts estados

estados.shift

# hash

# para criar
capitais = {}

#ou capitais = Hash.new

capitais[:acre] = "Rio branco"
capitais[:sp] = "SP"

capitais.delete(:acre)
capitais[:sp]

estados.each do |name|
  puts name
end
