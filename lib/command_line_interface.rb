require 'io/console'
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
    print "Active tags: "
    print Tag.all.map {|tag| tag.name}.join(", ")
    puts "\n\n"
end


def display_user_main_prompt
    puts "1. View all posts."
    puts "2. View your own posts."
    puts "3. View your liked posts."
    puts "4. Follow tags or view followed posts."
    puts "5. Search through all posts."
    puts "6. Create new post."
    puts "7. View top Poster."
    puts "8. View most liked posts."
    puts "9. Quit."
end

def display_like_prompt
    puts "1. Like a post."
    puts "Any other number to return to previous menu."
end 

def display_user_tag_prompt
    puts "Enter a tag to follow."
end

def current_post_display_check(current_post_display)
    if current_post_display == []
        puts "No posts found!"
    end
    
end

def display_post_results(current_post_display)
    puts "\n"
    count = 1
    current_post_display.each do |post|
        puts "\n"
        print "Post #{count}" 
        post.parse_post
        print "Likes: "
        print post.likes.count
        puts "\n\n ******************* \n\n"
        count +=1
    end
end

def like_query(user_input, user_main, current_post_display)
    if user_input == "1"
        puts "Enter post number."
        user_input = get_user_input()
        user_main.like_post(current_post_display,user_input)
    end
end

def display_search_prompt
    puts "1. Search by title."
    puts "2. Search by post content."
    puts "3. Search by post tags."
    puts "4. Sort posts by most liked posts"
    puts "5. Return to previous menu"
end

def get_user_input
    gets.chomp
end

def create_new_user
    puts "Enter a username."
    user_input = get_user_input()
    return User.create(username: user_input)
end

def login
    puts "Enter your username."
    user_input = get_user_input()
    return User.all.select {|user| user.username == user_input}[0]
end

def set_user_password(user_main)
    puts "Enter a password."
    # binding.pry
    user_main.pwd = get_user_input()
    user_main.save
end

def enter_user_password(user_main)
    if user_main.pwd == nil
        return user_main
    end
    puts "Enter your password:"
        password = STDIN.noecho(&:gets).chomp
        if user_main == nil
            return nil
        elsif password != user_main.pwd
          puts "\nPassword was incorrect\n\nor"
          return nil
        else
            return user_main
        end
end

def login_valid?(user_main)
    User.all.include?(user_main)
end

def user_tag_check(user_tag)
    if user_tag == nil
    puts "Tag not active."
    end
end

def create_created_post(topic,title,body,user_id)
    Post.create(topic: topic,title: title,body: body,user_id: user_id)
end

def select_post_to_tag(user_input, current_post_display)
    return current_post_display[user_input.to_i-1]

 end

 def display_follow_tag_options
     puts "1. Display posts with followed tags."
     puts "2. Add a tag to followed tags."
     puts "Any other number to return to previous menu."
 end

def invalid_option
    puts "\nPlease select a valid option!\n\n"
end

def exit 
    exit!
end