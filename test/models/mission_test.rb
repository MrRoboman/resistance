# == Schema Information
#
# Table name: missions
#
#  id         :integer          not null, primary key
#  number     :integer
#  status     :string
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
