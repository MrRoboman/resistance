class CreateTeamVotes < ActiveRecord::Migration
  def change
    create_table :team_votes do |t|
      t.string :vote
      t.references :team, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
