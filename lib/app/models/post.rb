class Post < ActiveRecord::Base
    has_many :likes
    belongs_to :user

    #most_likes

    #keyword_search_title

    #keyword_search_body
    
    #keyword_search_all_fields
    
end