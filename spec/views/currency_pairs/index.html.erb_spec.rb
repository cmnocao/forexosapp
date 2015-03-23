require 'spec_helper'

describe "currency_pairs/index" do
  before(:each) do
    assign(:currency_pairs, [
      stub_model(CurrencyPair),
      stub_model(CurrencyPair)
    ])
  end

  it "renders a list of currency_pairs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
