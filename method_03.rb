def ask_first_name
  puts "Quel est ton nom ?"
  gets.chomp
end
def say_hello(first_name)
  puts "Bojour #{first_name} !"
end
def perform
  say_hello(ask_first_name)
end
perform
