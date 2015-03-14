require 'spec_helper'

describe "rates/new" do
  before(:each) do
    assign(:rate, stub_model(Rate).as_new_record)
  end

  it "renders new rate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rates_path, "post" do
    end
  end
end
