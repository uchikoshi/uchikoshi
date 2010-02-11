require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'pp'
 
describe StagesController do
  before(:all) do 
    Stage.blueprint{ 
      id 2
      start_time Date.today
    }
    stub(Date).today { Date.new(2009,1,2) }
  end
  describe "GET index" do
    it "assigns scheduled stages as @stages" do
      mock(Stage).scheduled(Date.today) { [Stage.make_unsaved] }
      get :index
    end
  end
 
  describe "GET scheduled" do
    it "assigns scheduled stages as @stages" do
      mock(Stage).scheduled(Date.today) { [Stage.make_unsaved] }
      get :scheduled
    end
  end
 
  describe "GET past" do
    it "assigns past stages as @stages" do
      mock(Stage).past(Date.today) { [Stage.make_unsaved] }
      get :past
    end
  end
 
  describe "GET show" do
    it "assigns the requested stage as @stage" do
      stub(Stage).find("2") { Stage.make_unsaved }
      get :show, :id => "2"
    end
  end

end
