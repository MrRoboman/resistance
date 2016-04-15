# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#  player_id  :integer
#

class Game < ActiveRecord::Base
  validates :status, :name, presence: true

  # order here should grab players in the right order,
  # we'll need to update player order on mission completion
  has_many :players, dependent: :destroy, order: 'order ASC'
  has_many :missions, dependent: :destroy

  has_one :creator,
    foreign_key: player_id,
    primary_key: id,
    class_name: :Player

end
