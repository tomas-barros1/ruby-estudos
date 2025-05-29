require 'cpf_cnpj'

cpfInput = 23778785044

def validaCpf(cpf)
  CPF.valid?(cpf)
end

puts(validaCpf(cpfInput))