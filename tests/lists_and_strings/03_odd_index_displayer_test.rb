require_relative "../test_helper"
require_relative '../../Lists And Strings/03-odd_index_displayer'

include OddIndexDisplayer
describe "OddIndexDisplayer" do
  it "should print all odd elements of array" do    
    test_array = [1,9,8,3,5,6,2,0,11]
    assert_output(/The odd index elements are 9,3,6,0/) { find_odd_index_elements(test_array) }
  end
end