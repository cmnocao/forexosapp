require 'spec_helper'

describe "currency_pairs/show" do
  before(:each) do
    @currency_pair = assign(:currency_pair, stub_model(CurrencyPair))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
