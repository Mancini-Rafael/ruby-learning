require_relative "../test_helper"
require_relative '../../Lists And Strings/04-running_sum'

include RunningSum
describe "RunningSum" do
  it "should print the running sum of all elements in a list" do    
    string_io = StringIO.new
    string_io.puts '1'
    string_io.puts '2'
    string_io.puts '3'
    string_io.rewind
    $stdin = string_io
    test_array = [1,2,3,4,5]
    assert_output(/Running sum is 15\n/) { find_run_sum(test_array) }
    $stdin = STDIN
  end
end