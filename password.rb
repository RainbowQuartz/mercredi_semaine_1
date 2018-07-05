def define_password
  puts "Entrez votre mot de passe :"
  @user_password = gets.chomp
end
def password_verification(password)
  puts "Confirmez le mot de passe :"
  confirmation = gets.chomp
  if confirmation == password
    puts "Mot de passe correct."
    return password
  else
    puts "Mots de passe non concordant"
  end
end
def perform
  password_verification(define_password)
end
perform

def ask_password
  puts "Quel est votre mot de passe ?"
  password = gets.chomp
  return password
end
def connect(password)
  while password != @user_password
    puts "Mot de passe incorrect."
    puts "Rentrez votre mot de passe :"
    password = gets.chomp
  end
  puts "Vous êtes connecté.e"
end
def perform_2
  connect(ask_password)
end
perform_2
