numbers = Array.new

3.times do |x|
  print "Digite o #{x+1}° numero: "
  numbers.push(gets.chomp.to_i)
end

numbers.map! {|number| number**3}

puts numbers
