module PalindromeChecker
  def is_palindrome(string)
    binding.pry
    value = is_palindrome_custom(string) && is_palindrome_built_in(string)
    puts("#{string} #{value ? 'is' : 'is not'} a palindrome")
  end

  def is_palindrome_custom(string)
    is_palindrome = false
    string_array = string.downcase.gsub(/[^[:word:]\s]/, '').gsub(/\s+/, "").chars
    full_size = string_array.length
    halfway_point = full_size/2

    (0..halfway_point).each do |index|
      el = string_array[index]
      other_el = string_array[full_size - index]
      if el != other_el
        is_palindrome = true
      end
    end
    is_palindrome
  end

  def is_palindrome_built_in(string)
    string.downcase.gsub(/[^[:word:]\s]/, '').gsub(/\s+/, "") == string.downcase.gsub(/[^[:word:]\s]/, '').gsub(/\s+/, "").reverse
  end
end