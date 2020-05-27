require_relative "../test_helper"
require_relative '../../Elementary/02-greeter_modified'

describe "Welcoming users" do
  it "should work when inputing Alice" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts 'Alice'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/Hello Alice/) { GreeterModified.new.greet }
    $stdin = STDIN           #Reset Ruby's standard input
  end

  it "should work when inputing Bob" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts 'Bob'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/Hello Bob/) { GreeterModified.new.greet }
    $stdin = STDIN           #Reset Ruby's standard input
  end

  it "should not work when inputing other names" do    
    string_io = StringIO.new #New instance of StringIO
    string_io.puts 'Rafael'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/I can't greet this name/) { GreeterModified.new.greet }
    $stdin = STDIN           #Reset Ruby's standard input
  end
end