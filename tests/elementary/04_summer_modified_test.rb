require_relative "../test_helper"
require_relative '../../Elementary/04-summer_modified'

describe "Summing increasing numbers" do
  it "should work by classic loop" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '100'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/2418/) { SummerModified.new.loop_way }
    $stdin = STDIN           #Reset Ruby's standard input
  end

  it "should work by injection" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts '100'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/2418/) { SummerModified.new.inject_way }
    $stdin = STDIN           #Reset Ruby's standard input
  end
end