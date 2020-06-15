class Post < ActiveRecord::Base
    has_many :likes
    has_many :users, through: :like
end