require 'pry'
class User < ActiveRecord::Base
   has_many :likes
   has_many :posts
   has_many :user_tags
   has_many :tags, through: :user_tags

     
      def user_post_title
         self.posts.map {|post| post.title}
      end
   
      def user_post_topic
         self.posts.map {|post| post.topic}
      end

      def user_post_body
         self.posts.map {|post| post.body}
      end
      
      def post_percentage
         (self.posts.count / Post.all.length.to_f) * 100
      end 

      def posts_by_user_tags
         self.tags.map {|tag| tag.posts}.flatten!
      end

      def follow_a_tag(user_tag)
         UserTag.create(user_id: self.id, tag_id: user_tag.id)
      end

      def user_liked_posts
         self.likes.map{|like| like.post}
      end
      def display_user_tags
         print "You are following: "
         print self.tags.map{|tag| tag.name}.join(", ")
         puts"\n\n"
      end

      def like_post(current_post_display, user_input)
         like = Like.create(user_id: self.id, post_id: current_post_display[user_input.to_i-1].id)
         puts "\nYou like this post!\n"
         return like.post.parse_post
      end

      def self.most_likes
         Post.most_likes.map{|post| post.user}
      end

      def self.display_most_posts
         array = self.all.select do |user| 
           user.posts.count == self.all.map{|user| user.posts.count}.max 
         end 
       print "\nThe top poster is"
        array.each do|user| 
           puts " #{user.username}"     
         end
         puts "\n ******************* \n"
      end
end
