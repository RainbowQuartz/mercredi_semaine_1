def pyramide
  puts "Salut, bienvenue dans ma super pyramide! Combien d'étages veux-tu ?"
  print "> "
  n = gets.chomp.to_i
  puts "Voici la pyramide :"
  i = 1
  space = n-1
  while i <= n
    puts " "*space + "#"*i
    space -= 1
    i += 1
  end
end
pyramide
