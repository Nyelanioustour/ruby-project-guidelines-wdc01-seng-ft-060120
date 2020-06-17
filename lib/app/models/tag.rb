class Tag < ActiveRecord::Base
   has_many :post_tags
   has_many :posts, through: :post_tags

   
   def assign_tag_to_post(post)
    PostTag.create(post_id: post.id, tag_id: self.id)
   end

  def self.search_tag_by_name(user_input)
    self.all.select do |tag|
      tag.name == user_input
    end[0]
  end

  def self.tag_exist?(tag_name)
     array = self.all.select{|tag| tag.name == tag_name}
     if array == []
      false
     else
      true
     end
  end


end