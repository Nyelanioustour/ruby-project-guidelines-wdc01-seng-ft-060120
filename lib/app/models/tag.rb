class Tag < ActiveRecord::Base
   has_many :post_tags
   has_many :posts, through: :post_tags

   #method that aggregates tags by name

  def self.search_tag_by_name(user_input)
    self.all.select do |tag|
      tag.name == user_input
    end

  end

   
end