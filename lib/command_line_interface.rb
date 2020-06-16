def welcome
    puts "Welcome to Message Board!"
    puts "Please choose whether to login or create new user account"
    puts "1. Create new user account."
    puts "2. Login to existing account."
end

def get_user_input
    gets.chomp
end

def create_new_user
    puts "Enter a username."
    user_input = get_user_input()
    user1 = User.create(username: user_input)
end

def login
    puts "Enter your username."
    user_input = get_user_input()
    return User.all.select {|user| user.username == user_input}[0]
end