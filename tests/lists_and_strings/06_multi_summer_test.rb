require_relative "../test_helper"
require_relative '../../Lists And Strings/06-multi_summer'

include MultiSummer
describe "MultiSummer" do
  it "correctly sums a list using a for loop" do
    array = [1,2,3,4,5,6,7,8,9,10]
    assert_equal(55, sum_with_for_loop(array))
  end

  it "correctly sums a list using a while loop" do
    array = [1,2,3,4,5,6,7,8,9,10]
    assert_equal(55, sum_with_while_loop(array))
  end

  it "correctly sums a list using a recursive function" do
    array = [1,2,3,4,5,6,7,8,9,10]
    assert_equal(55, sum_with_recursion_loop(array))
  end
end