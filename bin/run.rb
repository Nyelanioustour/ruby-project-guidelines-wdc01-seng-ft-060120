require_relative '../config/environment'
require_relative '../lib/command_line_interface.rb'
require_relative '../lib/app/models/post.rb'
require_relative '../lib/app/models/user.rb'
require_relative '../lib/app/models/user_posts.rb'
user1 = nil
loop do
    welcome()
    user_input = get_user_input()
      case user_input 
      when "1"
        create_new_user()
        break
      when "2"
        user1 = login()
        if user1 !==nil
            break
        end
      else
        puts "\nPlease select a valid option!\n\n"
      end
end




binding.pry


