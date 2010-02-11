require 'spec_helper'

describe Position do
  before(:each) do
    @valid_attributes = {
      :continuity => nil,
      :member => nil,
      :equipment => nil,
      :description => "MyText"
    }
  end

  it "should create a new instance given valid attributes" do
    Position.create!(@valid_attributes)
  end
end
