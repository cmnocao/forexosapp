require "spec_helper"

describe RatesController do
    describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/rates").to route_to(
      :controller => "rates",
      :action => "index")
    end

    it "routes to #new" do
    expect(:get => "/rates/new").to route_to(
      :controller => "rates",
      :action => "new")
    end

    it "routes to #show" do
    expect(:get => "/rates/1").to route_to(
      :controller => "rates",
      :action => "show",
      :id => "1")
    end

    it "routes to #edit" do
    expect(:get => "/rates/1/edit").to route_to(
      :controller => "rates",
      :action => "edit",
      :id => "1")
    end

    it "routes to #create" do
    expect(:post => "/rates").to route_to(
      :controller => "rates",
      :action => "create")
    end

    it "routes to #update" do
    expect(:put => "/rates/1").to route_to(
      :controller => "rates",
      :action => "update",
      :id => "1")
    end

  end
end
