require_relative "../test_helper"
require_relative '../../Lists And Strings/05-palindrome_checker'

include PalindromeChecker
describe "PalindromeChecker" do
  it "correctly show whether a string is a palindrome" do
    palindrome = "Madam, I'm Adam"
    not_palindrome = "This is not a palindrome"
    
    assert_output(/Madam, I'm Adam is a palindrome\n/) { is_palindrome(palindrome) }
    assert_output(/This is not a palindrome is not a palindrome\n/) { is_palindrome(not_palindrome) }
  end
end