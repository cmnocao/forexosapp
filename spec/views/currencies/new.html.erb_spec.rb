require 'spec_helper'

describe "currencies/new" do
  before(:each) do
    assign(:currency, stub_model(Currency).as_new_record)
  end

  it "renders new currency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", currencies_path, "post" do
    end
  end
end
