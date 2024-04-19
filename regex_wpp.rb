# frozen_string_literal: true

print 'Digite seu whatsapp: '
whatsapp = gets.chomp

if /\([1-9]{2}\)9\s[0-9]{4}-[0-9]{4}$/.match(whatsapp)
  puts "Seu whatsapp é: #{whatsapp}"
else
  puts "Whatsapp invalido use o padrao '(XX) XXXX-XXXX'"
end
