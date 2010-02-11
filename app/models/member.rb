class Member < ActiveRecord::Base
  has_many :positions
  has_many :continuities, :through=>:positions
end
