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
    
    def self.display_sort_posts_most_likes
        array = []
        Post.all.each do |post|
            array << "Likes: #{post.likes.count}\n\nTitle: #{post.title}\n\n#{post.body}\n\nAuthor: #{post.user.username}\n\nPost #{post.id}\n\n ******************* \n\n"
        end
        puts array.sort.reverse
    end

    def self.most_likes
        self.all.select {|post| post.likes.count == self.all.map{|post| post.likes.count}.max}
    end
    
end