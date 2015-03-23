require 'spec_helper'

describe "currency_pairs/new" do
  before(:each) do
    assign(:currency_pair, stub_model(CurrencyPair).as_new_record)
  end

  it "renders new currency_pair form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", currency_pairs_path, "post" do
    end
  end
end
