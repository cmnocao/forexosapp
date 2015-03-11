require 'spec_helper'

describe "cities/new" do
  before(:each) do
    assign(:city, stub_model(City).as_new_record)
  end

  it "renders new city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cities_path, "post" do
    end
  end
end
