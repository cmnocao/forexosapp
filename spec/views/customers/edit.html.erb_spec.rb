require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
    end
  end
end
