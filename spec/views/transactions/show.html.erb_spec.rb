require 'spec_helper'

describe "transactions/show" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction))
  end

  it "renders attributes in <p>" do
    render
  end
end
