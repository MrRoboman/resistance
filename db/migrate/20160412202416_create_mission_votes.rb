class CreateMissionVotes < ActiveRecord::Migration
  def change
    create_table :mission_votes do |t|
      t.string :vote
      t.references :mission, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
