# -*- coding: utf-8 -*-
require 'spec_helper'

describe Member do

  context ".cast" do 
    before(:all) do
      Member.blueprint { }
      Continuity.blueprint { }
      continuity = Continuity.make
      Position.blueprint do 
        member
        continuity {continuity}
      end
      3.times { Position.make }
      3.times { Position.make({:continuity => Continuity.make }) }
      member = Member.make
      3.times { Position.make({:member => member }) }
    end

    after(:all) do 
      Member.delete_all
      Continuity.delete_all
      Position.delete_all
    end

    it "出演者が取得できること" do 
      members = Member.cast(1)
      members.should have(4).items
    end

    it "出演者がない場合はからになること" do 
      members = Member.cast(100)
      members.should be_empty
    end

    it "出演者が複数コンテにまたがって取得できること" do 
      members = Member.cast([1,2])
      members.should have(5).items
    end
  end
end
