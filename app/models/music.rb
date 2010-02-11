class Music < ActiveRecord::Base
  has_many :continuities
  has_many :stages, :through=>:continuities
end
