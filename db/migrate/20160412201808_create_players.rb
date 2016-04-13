class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :order
      t.string :alliance
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
