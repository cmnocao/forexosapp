require 'spec_helper'

describe "rates/index" do
  before(:each) do
    assign(:rates, [
      stub_model(Rate),
      stub_model(Rate)
    ])
  end

  it "renders a list of rates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
