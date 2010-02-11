require 'spec_helper'

describe Music do
  before(:each) do
    @valid_attributes = {
      :name => "MyString",
      :time => 1,
      :description => "MyText"
    }
  end

  it "should create a new instance given valid attributes" do
    Music.create!(@valid_attributes)
  end
end
