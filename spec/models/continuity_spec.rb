require 'spec_helper'

describe Continuity do
  before(:each) do
    @valid_attributes = {
      :stage => nil,
      :music => nil,
      :description => "MyText"
    }
  end

  it "should create a new instance given valid attributes" do
    Continuity.create!(@valid_attributes)
  end
end
