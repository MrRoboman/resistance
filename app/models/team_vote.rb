# == Schema Information
#
# Table name: team_votes
#
#  id         :integer          not null, primary key
#  vote       :string
#  team_id    :integer
#  player_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamVote < ActiveRecord::Base
  validates :team, :player, presence: true
  belongs_to :team
  belongs_to :player
end
