# == Schema Information
#
# Table name: mission_votes
#
#  id         :integer          not null, primary key
#  vote       :string
#  mission_id :integer
#  player_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MissionVote < ActiveRecord::Base
  belongs_to :mission
  belongs_to :player
end
