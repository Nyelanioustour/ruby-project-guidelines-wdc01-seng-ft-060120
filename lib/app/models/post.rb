require_relative '../../command_line_interface.rb'

class Post < ActiveRecord::Base
    has_many :likes
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    
    def parse_post
        puts "\nTitle: #{self.title}\n\n"
        puts "#{self.body}\n\n"
        puts "Author: #{self.user.username}\n\n"
    end

    

    def self.keyword_search_title(search_term)
        Post.all.select{|post| post.title.include?(search_term)}
    end
    
    def self.keyword_search_body(search_term)
        Post.all.select{|post| post.body.include?(search_term)}
    end
    
    def self.keyword_search_all_fields(search_term)
        results = []
        results << self.keyword_search_title(search_term)
        results << self.keyword_search_body(search_term)
    end

    def self.display_sorted_posts_most_likes
        array = []
        post_array = []
        count = 0

        Post.all.each do |post|
            array << post.likes.count
        end
        array = array.sort.reverse
        Post.all.each do |post|
            post.likes == array[count]
            post_array = [post]
            display_post_results(post_array)
            count +=1
            end
        return nil
    end


        # array.sort

            # post.likes.count == Post.all.map{|post| post.likes.count}.max
        


    def self.search_current_post_view(current_post_display)

    end
    

end