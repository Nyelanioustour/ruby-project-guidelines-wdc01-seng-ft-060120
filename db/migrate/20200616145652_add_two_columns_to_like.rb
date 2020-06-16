class AddTwoColumnsToLike < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :liked_id, :integer
    add_column :likes, :liked, :string
  end
end
