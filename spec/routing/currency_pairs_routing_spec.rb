require "spec_helper"

describe CurrencyPairsController do
  describe "routing" do

    it "routes to #index" do
      get("/currency_pairs").should route_to("currency_pairs#index")
    end

    it "routes to #new" do
      get("/currency_pairs/new").should route_to("currency_pairs#new")
    end

    it "routes to #show" do
      get("/currency_pairs/1").should route_to("currency_pairs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/currency_pairs/1/edit").should route_to("currency_pairs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/currency_pairs").should route_to("currency_pairs#create")
    end

    it "routes to #update" do
      put("/currency_pairs/1").should route_to("currency_pairs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/currency_pairs/1").should route_to("currency_pairs#destroy", :id => "1")
    end

  end
end
