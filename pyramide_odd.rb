def ask_levels
  puts "Salut, bienvenue dans ma super pyramide! Combien d'étages veux-tu ?"
  print "> "
  n = gets.chomp.to_i
end
def pyramide_odd(levels)
  puts "Voici la pyramide :"
  i = 0
  space = levels
  while i <= levels - 1
    puts " "*space + "#"*i + "#"*(i + 1) + " "*space
    space -= 1
    i += 1
  end
end
def perform
  pyramide_odd(ask_levels)
end
perform
