# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  attempt    :integer
#  status     :string
#  mission_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  belongs_to :mission
  belongs_to :user
end
