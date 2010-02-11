class Position < ActiveRecord::Base
  belongs_to :continuity
  belongs_to :member
  belongs_to :equipment
end
