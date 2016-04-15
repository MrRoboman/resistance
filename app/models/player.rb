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

class Player < ActiveRecord::Base
  belongs_to :user # don't user users for now, need to use something else
  belongs_to :game
end
