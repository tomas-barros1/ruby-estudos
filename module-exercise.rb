module Person
  class Juric
    attr_accessor :nome, :cnpj

    def initialize(nome, cnpj)
      @nome = nome
      @cnpj = cnpj
    end

    def add
      puts "Pessoa jurídica adicionada"
      puts "Nome #{@nome}"
      puts "Cnpj #{@cpnj}"
    end
  end

  class Physical
    attr_accessor :nome, :cpf

    def initialize(nome, cpf)
      @nome = nome
      @cpf = cpf
    end

    def add
      puts "Pessoa física adicionada"
      puts "Nome #{@nome}"
      puts "Cnpj #{@cpf}"
    end
  end
end

Person::Juric.new("Teste", "123").add
puts "-----------------------------------------"
Person::Physical.new("Teste", "123").add
