module LargestElement
  def find_largest_element(arr=nil)
    array = arr || Array.new(100) { rand(1..100) }
    max = nil
    array.each do |n|
      if n.to_i > max.to_i
        max = n
      end
    end
    # Ruby built in method for enumerable objects and O(n) way
    puts("#{array.max} | #{max}")
  end
end
