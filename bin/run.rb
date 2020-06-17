require_relative '../config/environment'
require_relative '../lib/command_line_interface.rb'
require_relative '../lib/app/models/post.rb'
require_relative '../lib/app/models/user.rb'

user_main = nil
current_post_display = []

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
        puts "\n#{user_main.username} is now logged in!"
        break
      else
        puts "\nUser name not found!\n\n"
      end
    end
    
loop do
  loop do
    display_select_option()
    display_user_main_prompt()
    user_input = get_user_input
    case user_input
    when "1"
      current_post_display = Post.all
      display_post_results(current_post_display)
      display_select_option()
      display_like_prompt()
      user_input = get_user_input()
      like_query(user_input)
    when "2"
      current_post_display = user_main.posts
      display_post_results(current_post_display)
    when "3" 
      current_post_display = user_main.user_liked_posts
      display_post_results(current_post_display)
    when "4"
      break
    when "5"
      puts "Enter topic" 
      topic = get_user_input
      puts "Enter title"
      title = get_user_input
      puts "Compose Post:" 
      body = get_user_input
      current_post_display << create_created_post(topic,title,body,user_main.id)
      display_post_results(current_post_display)
      display_add_tag?
      user_input = get_user_input
      if user_input == "1"
        display_tag_to_add?
        user_input = get_user_input
        user_tag = Tag.search_tag_by_name(user_input)
        user_tag.assign_tag_to_post(current_post_display[0])
        #add tag
      end
    when "6"
      User.display_most_posts
    when "7"
      current_post_display = Post.most_likes
      display_post_results(current_post_display)
      display_select_option()
      display_like_prompt()
      user_input = get_user_input()
      like_query(user_input)
    when "8"
      exit()
    else
      invalid_option()
    end
  end
  loop do
    display_select_option()
    display_search_prompt()
    user_input = get_user_input()
    case user_input
    when "1"
      puts "Enter search query"
      user_input = get_user_input()
      current_post_display = Post.keyword_search_title(user_input).map{|post| post}
      display_post_results(current_post_display)
      display_select_option()
      display_like_prompt()
      user_input = get_user_input()
      like_query(user_input)
    when "2"
      puts "Enter search query"
      user_input = get_user_input()
      current_post_display = Post.keyword_search_body(user_input)
      display_post_results(current_post_display)
      display_select_option()
      display_like_prompt()
      user_input = get_user_input()
      like_query(user_input)

    when "3"
      display_active_tags()
      display_select_option()
      display_tag_selection()
      user_input = get_user_input()
      current_post_display = PostTag.search_post_by_tags(user_input)
      display_post_results(current_post_display)
    when "4"
      current_post_display = Post.most_likes
      display_post_results(current_post_display)
      display_select_option()
      display_like_prompt()
      user_input = get_user_input()
      like_query(user_input)
    when "5"
      break
    else
      invalid_option()
    end
  end
end

binding.pry


