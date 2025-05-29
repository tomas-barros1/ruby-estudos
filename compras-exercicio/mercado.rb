class Mercado
  attr_accessor :produto #tipo getter e setter
  def initialize(produto)
    @produto = produto
  end
  def comprar()
    puts "Você comprou o produto #{@produto.nome} no valor de #{@produto.preco}"
  end
end