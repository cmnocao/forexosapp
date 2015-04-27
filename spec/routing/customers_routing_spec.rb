require "spec_helper"

describe CustomersController do
  describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/customers").to route_to(
      :controller => "customers",
      :action => "index")
    end

    it "routes to #new" do
    expect(:get => "/customers/new").to route_to(
      :controller => "customers",
      :action => "new")
    end

    it "routes to #show" do
    expect(:get => "/customers/1").to route_to(
      :controller => "customers",
      :action => "show",
      :id => "1")
    end

    it "routes to #edit" do
    expect(:get => "/customers/1/edit").to route_to(
      :controller => "customers",
      :action => "edit",
      :id => "1")
    end

    it "routes to #create" do
    expect(:post => "/customers").to route_to(
      :controller => "customers",
      :action => "create")
    end

    it "routes to #update" do
    expect(:put => "/customers/1").to route_to(
      :controller => "customers",
      :action => "update",
      :id => "1")
    end

  end
end
