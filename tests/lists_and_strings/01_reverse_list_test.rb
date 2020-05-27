require_relative "../test_helper"
require_relative '../../Lists And Strings/01-reverse_list'

include ReverseList
describe "Calculating" do
  it "should display correct value usinf ruby built-in modules" do    
    test_array = [1,9,8,3,5,6,2,0,11]
    assert_output(/11,0,2,6,5,3,8,9,1/) { reverse(test_array) }
  end

  it "should display correct value using custom way" do    
    test_array = [1,9,8,3,5,6,2,0,11]
    assert_output(/11,0,2,6,5,3,8,9,1/) { reverse_other_way(test_array) }
  end
end