class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
