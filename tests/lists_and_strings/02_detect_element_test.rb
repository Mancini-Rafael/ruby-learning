require_relative "../test_helper"
require_relative '../../Lists And Strings/02-detect_element'

include DetectElement
describe "DetectElement" do
  it "should correctly find element using ruby built-in method" do
    test_array = [1,9,8,3,5,6,2,0,11]
    target = 5
    assert_output(/This element does exist/) { detect_element_default(test_array, target) }
  end
  it "should correctly find element using custom method" do
    test_array = [1,9,8,3,5,6,2,0,11]
    target = 5
    assert_output(/This element does exist/) { detect_element_custom(test_array, target) }
  end
  it "should correctly fail to find element using ruby built-in method" do
    test_array = [1,9,8,3,5,6,2,0,11]
    target = 20
    assert_output(/This element does not exist/) { detect_element_default(test_array, target) }
  end
  it "should correctly fail to find element using custom method" do
    test_array = [1,9,8,3,5,6,2,0,11]
    target = 20
    assert_output(/This element does not exist/) { detect_element_custom(test_array, target) }
  end
end