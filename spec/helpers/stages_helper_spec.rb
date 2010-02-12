# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + '/../spec_helper'
 
describe StagesHelper do
  include StagesHelper

 
  describe ".position" do
    before(:all) do
      Member.blueprint { }
      Continuity.blueprint { }
      Sham.name {|index| "#{index}台目" }
      Equipment.blueprint do 
        name Sham.name
      end
      continuity = Continuity.make
      Position.blueprint do 
        member
        equipment
        continuity {continuity}
      end
      3.times { Position.make }
    end

    after do 
      Member.delete_all
      Continuity.delete_all
      Position.delete_all
    end

 
    it "指定されたメンバー曲の位置が取得できること" do
      pos = position(Continuity.all.first, Member.all.first)
      pos.should == ["1台目"]
    end

    it "指定されたメンバー曲の複数の位置が取得できること" do
      Position.make({ :member=>Member.all.first} )
      pos = position(Continuity.all.first, Member.all.first)
      pos.should == ["1台目","4台目"]
    end

    it "指定されたメンバーが無い場合はからの配列が取得できること" do
      pos = position(Continuity.all.first, Member.make)
      pos.should be_empty
    end
  end
 
end
