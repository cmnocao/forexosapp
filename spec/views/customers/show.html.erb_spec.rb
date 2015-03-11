require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
