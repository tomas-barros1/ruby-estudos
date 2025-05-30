# Crie um software que permita que o usuário entre com um texto, o idioma em que o texto está escrito e também o idioma para qual ele deseja traduzir o texto e receba como resposta na tela o texto traduzido
# Tudo isso deve ser realizado dentro de uma classe
# O resultado de cada tradução (junto com a frase original), deve ser guardado em um arquivo que possua no nome a data e horário da tradução
require 'net/http'
require 'date'
require 'json'
require 'uri'

class Tradutor
  attr_accessor :texto, :uri, :idioma

  def initialize(texto, idioma)
    @texto = texto
    @idioma = idioma
    @uri = URI('http://localhost:5000/translate') # docker run -ti --rm -p 5000:5000 libretranslate/libretranslate
  end

  def traduzir
    response = Net::HTTP.post(
      @uri,
      {
        q: @texto,
        source: 'pt',
        target: @idioma,
        format: "text"
        }.to_json,
      { "Content-Type" => "application/json" }
    )
    JSON.parse(response.body)["translatedText"]
  end
end

puts 'Digite o texto a ser traduzido'
texto = gets.chomp

puts 'Para qual linguagem deseja traduzir? (ex: en, pt, fr)'
linguagem = gets.chomp

tradutor = Tradutor.new(texto, linguagem)

texto_traduzido = tradutor.traduzir

puts "Texto traduzido: #{texto_traduzido}"

File.open(Date.today.to_s + '-' + Time.now.to_s, 'w') do | line |
  line.puts("Texto original: #{texto}")
  line.puts("Texto traduzido: #{texto_traduzido}")
end
