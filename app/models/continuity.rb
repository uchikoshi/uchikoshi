class Continuity < ActiveRecord::Base
  has_many :positions
  has_many :members, :through=>:positions
  has_many :equipment, :through=>:positions

  belongs_to :stage
  belongs_to :music
end
