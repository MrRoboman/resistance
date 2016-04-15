# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  order      :integer
#  alliance   :string
#  user_id    :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
