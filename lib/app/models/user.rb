require 'pry'
class User < ActiveRecord::Base
   has_many :likes
   has_many :posts

     
      def user_post_title
         self.posts.map {|post| post.title}
      end
   
      def user_post_topic
         self.posts.map {|post| post.topic}
      end

      def user_post_body
         self.posts.map {|post| post.body}
      end

      def percentage_posts
         (self.posts.count / Post.all.length.to_f) * 100
      end 

      def user_liked_posts
         self.likes.map{|like| like.post}
      end

      
      def self.most_likes
         Post.most_likes.map{|post| post.user}
      end

      def most_posts
         User.all.select do |user| user.posts.count == Post.all.map{|post| post.user}.map{|user| user.posts.count}.max
        end 
      end
end
