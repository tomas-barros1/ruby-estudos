require_relative 'produto'
require_relative 'mercado'

produto = Produto.new("Bolacha", 10.00)
mercado = Mercado.new(produto)
mercado.comprar
