class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :attempt
      t.string :status
      t.references :mission, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
