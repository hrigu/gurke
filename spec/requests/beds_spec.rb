require "spec_helper"

describe "BedsController" do
  fixtures :gardens, :beds
  describe "get /gardens/1/beds" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      BedsController.any_instance.stubs(:logged_in?).returns(true)
      BedsController.any_instance.stubs(:current_account).returns(Account.new)
      Account.any_instance.stubs(:username).returns("Hannes")
      get(garden_bed_path(:garden_id => 1, :id => 1))
      response.status.should be(200)
    end
  end
end
