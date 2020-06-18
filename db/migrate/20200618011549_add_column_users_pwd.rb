class AddColumnUsersPwd < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pwd, :string
  end
end
