require_relative "../test_helper"
require_relative '../../Elementary/10-alternating_series'

describe "Calculating" do
  it "should display correct value" do    
    assert_output(/-4000012/) { AlternatingSeries.new.calculate }
  end
end