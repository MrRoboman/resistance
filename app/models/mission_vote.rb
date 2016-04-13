class MissionVote < ActiveRecord::Base
  belongs_to :mission
  belongs_to :player
end
