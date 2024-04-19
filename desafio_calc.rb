def nums_validation()

  while true
    begin
      print "Digite o primeiro número: "
      num1 = Float(gets.chomp)
      break
    rescue
      puts "\e[31m*Digite um numero válido!\e[0m"
    end
  end

  while true
    begin
      print "Digite o segundo número: "
      num2 = Float(gets.chomp)
      break
    rescue
      puts "\e[31m*Digite um numero válido!\e[0m"
    end
  end

    return [num1, num2]

end

def continue
  puts "Pressione Enter para continuar..."
  gets.chomp
end

while true

  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  puts "0 - Sair"
  print "Escolha uma opção: "

  opcao = gets.chomp

  case opcao

  when '0'
    puts "Programa encerrado."
    puts "♦️ Goodbye!"
    break

  when '1'
    nums = nums_validation
    puts "Soma = #{nums.reduce(:+)}"
    continue

  when '2'
    nums = nums_validation
    puts "Subtração = #{nums.reduce(:-)}"
    continue

  when '3'
    nums = nums_validation
    puts "Multiplicação = #{nums.reduce(:*)}"
    continue

  when '4'
    nums = nums_validation
    puts "Divisão = #{nums.reduce(:/)}"
    continue

  else
    puts "\e[31m*Opção invalida, tente novamente.\e[0m"
  end

end
