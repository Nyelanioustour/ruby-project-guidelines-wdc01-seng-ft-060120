class Like < ActiveRecord::Base
   belongs_to :user
   belongs_to :post

   def self.total_likes
      Like.all.count
   end
end