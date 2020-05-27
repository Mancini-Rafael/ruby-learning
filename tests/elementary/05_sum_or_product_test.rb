require_relative "../test_helper"
require_relative '../../Elementary/05-sum_or_product'

describe "Summing increasing numbers" do
  it "should display correct sum" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '100'     #Stub user number input
    string_io.puts '1'       #Stub user option input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/Sum is 5050/) { SumOrProduct.new.choose_option }
    $stdin = STDIN           #Reset Ruby's standard input
  end
  it "should display correct product" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '5'     #Stub user number input
    string_io.puts '2'       #Stub user option input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/Product is 120/) { SumOrProduct.new.choose_option }
    $stdin = STDIN           #Reset Ruby's standard input
  end

  it "should display error with invalid product" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '5'       #Stub user number input
    string_io.puts '3'       #Stub user option input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_raises RuntimeError do 
      SumOrProduct.new.choose_option
    end
    $stdin = STDIN           #Reset Ruby's standard input
  end
end