class Post < ActiveRecord::Base
    has_many :likes
    belongs_to :user
    

    def self.keyword_search_title(search_term)
        Post.all.select{|post| post.title.include?(search_term)}
    end
    
    def self.keyword_search_body(search_term)
        Post.all.select{|post| post.body.include?(search_term)}
    end
    
    def self.keyword_search_all_fields(search_term)
        results = []
        results << keyword_search_title(search_term)
        results << keyword_search_body(search_term)
    end

    def self.most_likes
        Post.all.select do |post|
            post.likes.count == Post.all.map{|post| post.likes.count}.max
        end
    end
end