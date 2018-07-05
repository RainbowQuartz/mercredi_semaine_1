def nombre_marches
  puts "Combien de marches voulez-vous ?"
  print ">"
  @steps = gets.to_i
end

def staircase(step)
  i = 1
  n = step
  while n >= 0
    puts ' ' * n + '_'
    n -= 1
  end
  puts '*'
end

def launch_dice
  dice_face = 1 + rand(6)
  return dice_face
end

def climbing_steps(x)
  climb = 0
  climb += x
  puts "Montez de #{climb} marches."
  return climb
end

def down_steps(x)
  down = 0
  down += (x)
  puts "Descendez de #{down} marches"
  return down
end

def reaching_top
  i = 0
  n = @steps
  while i < @steps
    i += climbing_steps(launch_dice)
    puts "Encore un effort !"
  end
  puts " " * (n + 1) + "*"
  while n >= 0
    puts ' ' * n + '_'
    n -=1
  end
  puts "Vous êtes arrivé.e en haut, bravo !!"
end

def coming_down
  i = @steps
  n = 0
  while i > 0
    i -=  down_steps(launch_dice)
    puts "Encore un effort !"
  end
  while n < @steps
    puts ' ' * n + '_'
    n +=1
  end
  puts " " * (n + 1) + "*"
  puts "Vous êtes arrivé.e en bas !"
end

def down
  puts "Voulez-vous redescendre ?(Y/N)"
  answer = gets.chomp.downcase
  if answer == 'y'
    puts "C'est parti !!"
    coming_down
  else
    puts "Bonne journée là-haut !"
  end
end

def perform
  staircase(nombre_marches)
  reaching_top
  down
end

perform
