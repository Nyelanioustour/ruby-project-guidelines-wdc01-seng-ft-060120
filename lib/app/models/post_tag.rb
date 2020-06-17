class PostTag < ActiveRecord::Base
    belongs_to :post
    belongs_to :tag


    def self.search_post_by_tags(name)
        self.all.select {|posttag| posttag.tag.name == name}.map{|posttag| posttag.post} 
    end

end