class Stage < ActiveRecord::Base
  has_many :continuities
  has_many :musics, :through=>:continuities

  default_scope order("start_time DESC")
  scope :past, lambda {|date| where("start_time < :start_time", {:start_time => date }) }
  scope :scheduled, lambda {|date| where("start_time >= :start_time", {:start_time => date })}
end
