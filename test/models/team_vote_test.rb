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

require 'test_helper'

class TeamVoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
