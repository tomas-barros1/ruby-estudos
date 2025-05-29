class Carro
  def initialize(nome, marca, ano)
    @nome = nome
    @marca = marca
    @ano = ano
  end
  def andar()
    puts("#{@nome} andou")
  end
end

carro = Carro.new("Camaro", "Chevrolet", 1990)
carro.andar
