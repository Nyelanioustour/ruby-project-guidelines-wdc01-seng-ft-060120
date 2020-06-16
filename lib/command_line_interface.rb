def welcome
    puts "Welcome to Message Board!"
    puts "Please choose whether to login or create new user account"
    puts "1. Create new user account."
    puts "2. Login to existing account."
    puts "3. Quit"
end

def display_select_option
    puts "Select an option."
end

def display_user_main_prompt
    puts "1. View all posts."
    puts "2. View your own posts"
    puts "3. View liked posts"
    puts "4. Search through all posts"
    puts "5. Create new post"
    puts "6. Quit."
end

def display_all_posts
    Post.all.each do |post|
        post.parse_post
    end
end

def display_user_posts(user_main)

    user_main.posts.each do |post|
        post.parse_post
    end 
end

def display_user_liked_posts(user_main)
    user_main.user_liked_posts.each do |post|
        post.parse_post
    end
end

def create_post_by_user(user_main)
    #take in user and make post
end

def display_search_prompt
    puts "1. Search by title."
    puts "2. Search by post content."
    puts "3. Show most liked posts"
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

def login_valid?(user_main)
    User.all.include?(user_main)
end

def invalid_option
    puts "\nPlease select a valid option!\n\n"
end

def exit 
    exit(true)
end