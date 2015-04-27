require "spec_helper"

describe TransactionsController do
  describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/transactions").to route_to(
      :controller => "transactions",
      :action => "index")
    end

    it "routes to #show" do
    expect(:get => "/transactions/1").to route_to(
      :controller => "transactions",
      :action => "show",
      :id => "1")
    end

    it "routes to #update" do
    expect(:put => "/transactions/1").to route_to(
      :controller => "transactions",
      :action => "update",
      :id => "1")
    end

  end
end
