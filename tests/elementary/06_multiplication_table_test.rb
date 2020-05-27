require_relative "../test_helper"
require_relative '../../Elementary/06-multiplication_table'

describe MultiplicationTable do
  describe "#print_tables" do
    it "should print a multiplication table for all numbers in range (1..12)" do
      (1..10).each do |table|
        assert_output(/Multiplication Table for #{table}/) { MultiplicationTable.new.print_tables }
      end
    end
  end
end