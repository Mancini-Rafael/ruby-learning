require_relative "../test_helper"
require_relative '../../Elementary/00-hello_world'

describe HelloWord do
  describe "#main" do
    it "should return a greeting" do
      assert_output(/Hello World/) { HelloWord.main }
    end
  end
end