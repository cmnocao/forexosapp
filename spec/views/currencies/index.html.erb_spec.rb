require 'spec_helper'

describe "currencies/index" do
  before(:each) do
    assign(:currencies, [
      stub_model(Currency),
      stub_model(Currency)
    ])
  end

  it "renders a list of currencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
