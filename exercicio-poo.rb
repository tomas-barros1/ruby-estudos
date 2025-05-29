class Esportista
  def competir()
    puts "Participando de competicao..."
  end
end

class JogadorDeFutelbol < Esportista
  def correr()
    puts "Correr atrás da bola"
  end
end

class Maratonista < Esportista
  def correr()
    puts "Percorrendo circuito"
  end
end

jogador = JogadorDeFutelbol.new
jogador.competir
jogador.correr