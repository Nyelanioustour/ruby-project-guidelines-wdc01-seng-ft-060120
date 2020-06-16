class User < ActiveRecord::Base
   has_many :likes
   has_many :posts

   def self.most_likes
      Like.all.map {|like| like.user_id}
   end

   #most_posts

   #total_posts

   #avg_posts

end