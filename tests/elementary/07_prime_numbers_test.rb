require_relative "../test_helper"
require_relative '../../Elementary/07-prime_numbers'

describe FindPrimes do
  describe "#find_all_up_to" do
    it "should print all prime numbers up to n" do
      string_io = StringIO.new #New instance of StringIO
      string_io.puts '30'      #Stub user number input
      string_io.rewind         #Start from first stub
      $stdin = string_io       #Override Ruby's standard input
      assert_output(/2 | 3 | 5 | 7 | 11 | 13 | 17 | 19 | 23 | 29/) { FindPrimes.new.find_all_up_to_number }
      $stdin = STDIN           #Reset Ruby's standard input
    end
  end
end