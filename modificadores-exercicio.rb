class Carro
  def get_km(string)
    find_km(string)
  end

  private

  def find_km(string)
    # buscar a primeira ocorrência de kilometragem no texto
    kilometragem = string.match(/\b\d{1,3}\s?km\/h\b/)
    puts kilometragem
  end
end

carro = Carro.new
carro.get_km("A velocidade do carro é 80km/h em pista seca.")
