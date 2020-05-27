require_relative "../test_helper"
require_relative '../../Elementary/03-summer'

describe "Summing increasing numbers" do
  it "should work by classic loop" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '100'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/5050/) { Summer.new.loop_way }
    $stdin = STDIN           #Reset Ruby's standard input
  end

  it "should work by range sum" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '100'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/5050/) { Summer.new.range_sum_way }
    $stdin = STDIN           #Reset Ruby's standard input
  end

  it "should not work by injection" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '100'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/5050/) { Summer.new.inject_way }
    $stdin = STDIN           #Reset Ruby's standard input
  end
  
  it "should not work by reducing" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '100'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/5050/) { Summer.new.reduce_way }
    $stdin = STDIN           #Reset Ruby's standard input
  end
end