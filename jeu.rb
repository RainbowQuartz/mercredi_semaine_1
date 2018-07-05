@steps = 10

def staircase
  i = 1
  n = @steps
  while n >= 0
    puts ' ' * (n + 1) + '#'
    n -= 1
  end
  puts '*'
  puts ' '
end

def staircase_win
  i = 1
  n = @steps
  puts " " * (n + 1) + "|o/"
  while n >= 0
    puts ' ' * n + "#"
    n -= 1
  end
  puts ' '
end

def launch_dice
  dice_face = 1 + rand(6)
  return dice_face
end

def reaching_top
  n = 0
  while n < @steps
    puts "Lancez le dé :"
    s = gets.chomp
    number = launch_dice
    if number == 1
      if n == 0
        puts "Vous êtes revenus au point de départ"
      else
        puts "Vous reculez d'une case"
        n -= 1
        puts "Vous êtes maintenant à la case #{n}"
      end
    elsif number == 5 or number == 6
      puts "Vous avancez d'une case"
      n += 1
      puts "Vous êtes maintenant à la case #{n}"
    else
      puts "Passez votre tour"
      puts "Vous êtes toujours à la case #{n}"
    end
  end
  puts staircase_win
  puts "vous êtes arrivés en haut"
end

def perform
  staircase
  reaching_top
end

perform
