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

require 'test_helper'

class MissionVoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
