class User < ActiveRecord::Base
   has_many :likes
   has_many :posts

   #total_posts

   #avg_posts

   #total_likes

   # def self.most_likes
   #    Like.all.map {|like| like.user_id}
   # end

   

end