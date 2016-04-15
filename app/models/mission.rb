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

class Mission < ActiveRecord::Base
  belongs_to :game
end
