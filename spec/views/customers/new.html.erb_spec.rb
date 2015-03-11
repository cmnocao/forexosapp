require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
    end
  end
end
