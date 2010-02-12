class Member < ActiveRecord::Base
  has_many :positions
  has_many :continuities, :through=>:positions

  scope :cast, lambda { |continuities| 
    where("positions.continuity_id IN(:id)", { :id=>continuities}).includes(:positions)
  }
end
