class Tag < ActiveRecord::Base
   has_many :posts, through: :posttag
end