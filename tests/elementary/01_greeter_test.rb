require_relative "../test_helper"
require_relative '../../Elementary/01-greeter'

describe "Welcoming users" do
  it "should work" do
    string_io = StringIO.new #New instance of StringIO
    string_io.puts 'Rafael'  #Stub user input
    string_io.rewind         #Start from first stub
    $stdin = string_io       #Override Ruby's standard input
    assert_output(/Hello Rafael/) { Greeter.new.greet }
    $stdin = STDIN           #Reset Ruby's standard input
  end
end