require 'nokogiri'
require 'net/http'

# Definindo a URI
https = Net::HTTP.new('example.com', 443)
https.use_ssl = true

# Fazendo a requisição GET
response = https.get("/")

# Lendo e parseando com Nokogiri
doc = Nokogiri::HTML(response.body)

# Pegando o primeiro <h1>
h1 = doc.at('h1')

# Verificando se achou algo e imprimindo
puts h1 ? h1.content : "Nenhum <h1> encontrado"
