while true
  print "Digite seu nome: "
  nome = gets.chomp
  if !nome.match(/[a-zA-Z]/)
    puts "\e[31m**Por favor, digite um nome válido**\e[0m"
  else
    break
  end
end

while true
  print "Digite seu sobrenome: "
  sobrenome = gets.chomp
  if !sobrenome.match(/[a-zA-Z]/)
    puts "\e[31m**Por favor, digite um sobrenome válido**\e[0m"
  else
    break
  end
end

while true
  print "Digite seu idade: "
  idade = gets.chomp
  if !idade.match(/\A\d+\z/)
    puts "\e[31m**Por favor, digite apenas numeros**\e[0m"
  else
    break
  end
end

puts "----------------\nNome completo: #{nome + " " + sobrenome}\nIdade: #{idade}"
