require "spec_helper"

describe CurrencyPairsController do
  describe "routing", :type => :routing do

    it "routes to #index" do
    expect(:get => "/currency_pairs").to route_to(
      :controller => "currency_pairs",
      :action => "index")
    end

    it "routes to #new" do
    expect(:get => "/currency_pairs/new").to route_to(
      :controller => "currency_pairs",
      :action => "new")
    end

    it "routes to #show" do
    expect(:get => "/currency_pairs/1").to route_to(
      :controller => "currency_pairs",
      :action => "show",
      :id => "1")
    end

    it "routes to #edit" do
    expect(:get => "/currency_pairs/1/edit").to route_to(
      :controller => "currency_pairs",
      :action => "edit",
      :id => "1")
    end

    it "routes to #create" do
    expect(:post => "/currency_pairs").to route_to(
      :controller => "currency_pairs",
      :action => "create")
    end

    it "routes to #update" do
    expect(:put => "/currency_pairs/1").to route_to(
      :controller => "currency_pairs",
      :action => "update",
      :id => "1")
    end

  end
end
