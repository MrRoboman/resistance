class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.integer :number
      t.string :status
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
