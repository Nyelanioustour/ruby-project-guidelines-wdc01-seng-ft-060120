class RemoveTagIdFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :tag_id
  end
end
