require "spec_helper"

describe StatesController do
  describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/states").to route_to(
      :controller => "states",
      :action => "index")
    end

    it "routes to #new" do
    expect(:get => "/states/new").to route_to(
      :controller => "states",
      :action => "new")
    end

    it "routes to #show" do
    expect(:get => "/states/1").to route_to(
      :controller => "states",
      :action => "show",
      :id => "1")
    end

    it "routes to #edit" do
    expect(:get => "/states/1/edit").to route_to(
      :controller => "states",
      :action => "edit",
      :id => "1")
    end

    it "routes to #create" do
    expect(:post => "/states").to route_to(
      :controller => "states",
      :action => "create")
    end

    it "routes to #update" do
    expect(:put => "/states/1").to route_to(
      :controller => "states",
      :action => "update",
      :id => "1")
    end

  end
end