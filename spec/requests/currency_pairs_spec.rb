require 'spec_helper'

describe "CurrencyPairs" do
  describe "GET /currency_pairs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get currency_pairs_path
      response.status.should be(200)
    end
  end
end
