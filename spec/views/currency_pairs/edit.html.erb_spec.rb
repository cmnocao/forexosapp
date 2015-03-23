require 'spec_helper'

describe "currency_pairs/edit" do
  before(:each) do
    @currency_pair = assign(:currency_pair, stub_model(CurrencyPair))
  end

  it "renders the edit currency_pair form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", currency_pair_path(@currency_pair), "post" do
    end
  end
end
