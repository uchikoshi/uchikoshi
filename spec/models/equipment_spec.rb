require 'spec_helper'

describe Equipment do
  before(:each) do
    @valid_attributes = {
      :name => "MyString",
      :size => 1.5
    }
  end

  it "should create a new instance given valid attributes" do
    Equipment.create!(@valid_attributes)
  end
end
