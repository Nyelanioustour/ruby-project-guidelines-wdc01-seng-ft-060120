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

def display_add_tag?
    puts "Do you want to add tag to your post?"
    puts "1. Yes"
    puts "2. No"

end

def display_tag_selection()
    puts "Enter tag to search by"
end

def display_tag_to_add?
    puts "Enter your tag to add"

end

def display_active_tags()
    array = Tag.all.map do |tag|
        tag.name
    end
    print "Active tags: "
    puts array.split(", ")
end


def display_user_main_prompt
    puts "1. View all posts."
    puts "2. View your own posts"
    puts "3. View your liked posts"
    puts "4. Search through all posts"
    puts "5. Create new post"
    puts "6. View top Poster"
    puts "7. View most liked posts"
    puts "8. Quit."
end

def display_like_prompt
    puts "1. Like a post."
    puts "Any other number to return to previous menu."
    
end 

def display_post_results(current_post_display)
    puts "\n"
    count = 1
    current_post_display.each do |post|
        puts "\n"
        print "Post #{count}" 
        post.parse_post
        count +=1
    end
end

def like_query(user_input)
    if user_input == "1"
        puts "Enter post number.8"
        user_input = get_user_input()
        user_main.like_post(current_post_display,user_input)
    end
end

def display_search_prompt
    puts "1. Search by title."
    puts "2. Search by post content."
    puts "3. Search by post tags."
    puts "4. Show most liked posts"
    puts "5. Return to previous menu"
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

def create_created_post(topic,title,body,user_id)
    Post.create(topic: topic,title: title,body: body,user_id: user_id)
end

def select_post_to_tag(user_input, current_post_display)
    return current_post_display[user_input.to_i-1]

 end

def invalid_option
    puts "\nPlease select a valid option!\n\n"
end

def exit 
    exit!
end