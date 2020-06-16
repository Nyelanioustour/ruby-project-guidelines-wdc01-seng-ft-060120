require_relative '../config/environment'
require_relative '../lib/command_line_interface.rb'
require_relative '../lib/app/models/post.rb'
require_relative '../lib/app/models/user.rb'
require_relative '../lib/app/models/user_posts.rb'
user_main = nil
loop do
    welcome()
    user_input = get_user_input()
      case user_input 
      when "1"
        create_new_user()

      when "2"
        user_main = login()
      when "3"
        exit()
      else
        invalid_option()
      end
    
    if login_valid?(user_main)
      puts "\n#{user_main} is now logged in!"
    break
    else
      puts "\nUser name not found!\n\n"
    end
end

loop do
  display_select_option()
  display_user_main_prompt()
  user_input = get_user_input
  case user_input
  when "1"
    puts display_all_posts()
  when "2"
    display_user_posts(user_main)
  when "3" 
    display_user_liked_posts(user_main)
  when "4"
    display_search_prompt()
  when "5"
    create_post_by_user(user_main)
  when "6"
    exit()
  else
    invalid_option()
  end
end

  


#give options to search
#give option to post
#give option to see all posts



binding.pry


