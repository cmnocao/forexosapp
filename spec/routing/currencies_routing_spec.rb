require "spec_helper"

describe CurrenciesController do
    describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/currencies").to route_to(
      :controller => "currencies",
      :action => "index")
    end

    it "routes to #new" do
    expect(:get => "/currencies/new").to route_to(
      :controller => "currencies",
      :action => "new")
    end

    it "routes to #show" do
    expect(:get => "/currencies/1").to route_to(
      :controller => "currencies",
      :action => "show",
      :id => "1")
    end

    it "routes to #edit" do
    expect(:get => "/currencies/1/edit").to route_to(
      :controller => "currencies",
      :action => "edit",
      :id => "1")
    end

    it "routes to #create" do
    expect(:post => "/currencies").to route_to(
      :controller => "currencies",
      :action => "create")
    end

    it "routes to #update" do
    expect(:put => "/currencies/1").to route_to(
      :controller => "currencies",
      :action => "update",
      :id => "1")
    end

  end
end
