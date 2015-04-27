require "spec_helper"

describe CountriesController do
  describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/countries").to route_to(
      :controller => "countries",
      :action => "index")
    end

    it "routes to #new" do
    expect(:get => "/countries/new").to route_to(
      :controller => "countries",
      :action => "new")
    end

    it "routes to #show" do
    expect(:get => "/countries/1").to route_to(
      :controller => "countries",
      :action => "show",
      :id => "1")
    end

    it "routes to #edit" do
    expect(:get => "/countries/1/edit").to route_to(
      :controller => "countries",
      :action => "edit",
      :id => "1")
    end

    it "routes to #create" do
    expect(:post => "/countries").to route_to(
      :controller => "countries",
      :action => "create")
    end

    it "routes to #update" do
    expect(:put => "/countries/1").to route_to(
      :controller => "countries",
      :action => "update",
      :id => "1")
    end

  end
end
