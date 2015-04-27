require "spec_helper"

describe CitiesController do
  describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/cities").to route_to(
      :controller => "cities",
      :action => "index")
    end

    it "routes to #new" do
    expect(:get => "/cities/new").to route_to(
      :controller => "cities",
      :action => "new")
    end

    it "routes to #show" do
    expect(:get => "/cities/1").to route_to(
      :controller => "cities",
      :action => "show",
      :id => "1")
    end

    it "routes to #edit" do
    expect(:get => "/cities/1/edit").to route_to(
      :controller => "cities",
      :action => "edit",
      :id => "1")
    end

    it "routes to #create" do
    expect(:post => "/cities").to route_to(
      :controller => "cities",
      :action => "create")
    end

    it "routes to #update" do
    expect(:put => "/cities/1").to route_to(
      :controller => "cities",
      :action => "update",
      :id => "1")
    end

  end
end