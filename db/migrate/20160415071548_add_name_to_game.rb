class AddNameToGame < ActiveRecord::Migration
  def change
    add_column :games, :name, :string
    change_column :games, :name, :string, null: false
    add_index :games, :name, unique: true
  end
end
