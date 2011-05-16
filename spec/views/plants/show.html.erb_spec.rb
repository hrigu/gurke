require 'spec_helper'

describe "plants/show.html.erb" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
