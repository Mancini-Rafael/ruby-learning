require_relative "../test_helper"
require_relative '../../Elementary/08-guessing_game'

describe "When playing the guessing game" do
  it "should show the proper count for the number of guesses" do
    string_io = StringIO.new
    string_io.puts '1'
    string_io.puts '2'
    string_io.puts '3'
    string_io.puts '100'
    string_io.rewind
    $stdin = string_io
    assert_output(/You got it, the number is 100 and it took you 4 tries!/) { GuessingGame.new(100).play }
    $stdin = STDIN
  end
  it "should not increase the guess count for the same guess" do
    string_io = StringIO.new
    string_io.puts '1'
    string_io.puts '1'
    string_io.puts '1'
    string_io.puts '100'
    string_io.rewind
    $stdin = string_io
    assert_output(/You got it, the number is 100 and it took you 2 tries!/) { GuessingGame.new(100).play }
    $stdin = STDIN
  end
  it "should show feedback messages when you're too high or too low" do
    string_io = StringIO.new
    string_io.puts '1'
    string_io.puts '101'
    string_io.puts '100'
    string_io.rewind
    $stdin = string_io
    assert_output(/\b\nNot quite, you're too low\n\b.*\b\nNot quite, you're too high\n\b/) { GuessingGame.new(100).play }
    $stdin = STDIN
  end
end