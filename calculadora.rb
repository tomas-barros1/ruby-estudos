
def somar()
  puts("Digite o primeiro numero")
  numero = gets.chomp.to_i

  puts("Digite o segundo numero")
  numero2 = gets.chomp.to_i

  puts "Resultado #{numero + numero2}"
end

def subtrair()
  puts("Digite o primeiro numero")
  numero = gets.chomp.to_i

  puts("Digite o segundo numero")
  numero2 = gets.chomp.to_i

  puts "Resultado #{numero - numero2}"
end

def dividir()
  puts("Digite o primeiro numero")
  numero = gets.chomp.to_i

  puts("Digite o segundo numero")
  numero2 = gets.chomp.to_i

  puts "Resultado #{numero / numero2}"
end

loop do
  puts "Qual opção deseja?"
  opcao = gets.chomp.to_i

  case opcao
  when 1
    somar()
  when 2
    subtrair()
  when 3 
    dividir()
  when 4
    break
  else
    puts "Opção inválida. Tente novamente."
  end
end
