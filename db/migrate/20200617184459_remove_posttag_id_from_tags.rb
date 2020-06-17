class RemovePosttagIdFromTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :posttag_id
  end
end
