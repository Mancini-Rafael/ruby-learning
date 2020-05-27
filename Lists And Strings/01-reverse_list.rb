module ReverseList
  def reverse(arr=nil)
    array = arr || Array.new(13) { rand(1..100) }
    # Ruby built in method for enumerable objects
    puts("Original array")
    puts("[#{array.compact.join(',')}]")
    puts("Reserved array built-in")
    puts("[#{array.compact.reverse.join(',')}]")
    #Other way
  end

  def reverse_other_way(arr=nil)
    array = arr || Array.new(13) { rand(1..100) }
    # Other way
    total_size = array.length
    halfway_point = array.length/2

    (0..halfway_point).each do |index|
      el = array[index]
      other_el = array[total_size - index]
      
      array[index] = other_el
      array[total_size - index] = el
    end
    puts("Reserved array custom")
    puts("[#{array.compact.join(',')}]")
  end

end