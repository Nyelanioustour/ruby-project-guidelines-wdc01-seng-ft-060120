class Like < ActiveRecord::Base
   belongs_to :user
   belongs_to :post

   #total_like
end