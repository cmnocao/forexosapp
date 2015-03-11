require 'spec_helper'

describe "currencies/edit" do
  before(:each) do
    @currency = assign(:currency, stub_model(Currency))
  end

  it "renders the edit currency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", currency_path(@currency), "post" do
    end
  end
end
