class CreateTableTag < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string  :name
      t.integer :posttag_id
      end
  end
end
