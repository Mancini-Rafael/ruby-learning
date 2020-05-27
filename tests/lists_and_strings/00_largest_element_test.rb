require_relative "../test_helper"
require_relative '../../Lists And Strings/00-largest_element'

include LargestElement
describe "Calculating" do
  it "should display correct value" do    
    test_array = [1,9,8,3,5,6,2,0,11]
    assert_output(/11 | 11/) { find_largest_element(test_array) }
  end
end