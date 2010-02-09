class Stage < ActiveRecord::Base
  default_scope order("start_time DESC")
#  scope :past, lambda {|date| where("start_time < :start_time", {:start_time => date }) }
#    :conditions => ["start_time < :start_time", {:start_time => date }] 
  scope :past, lambda {|date| { :conditions => ["start_time < ?", date ] } }
end
