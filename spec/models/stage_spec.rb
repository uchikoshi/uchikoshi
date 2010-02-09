# -*- coding: utf-8 -*-
require 'spec_helper'

describe Stage do
  before(:each) do
    @valid_attributes = {
      :name => "MyString",
      :place => "MyString",
      :start_time => DateTime.new(2010,2,9,10),
      :description => ""
    }
  end

  context ".past" do 
    before do 
      @s = Stage.create(@valid_attributes)
    end
    it "指定日より過去の公演が取得できること" do 
      stages = Stage.past(Date.new(2010,2,10))
      stages.should have(1).item
      stages.first.should eql @s
    end
    it "指定日の公演は取得できないこと" do 
      stages = Stage.past(Date.new(2010,2,9,10))
      stages.should be_empty
    end
  end
end
