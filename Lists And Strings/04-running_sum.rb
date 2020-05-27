module RunningSum
  def find_run_sum(arr=nil)
    array = arr || Array.new(10) { rand(1..100) }
    running_sum = 0
    array.each do |el|
      running_sum += el.to_i
    end
    puts("Running sum is #{running_sum}")
    
    # This method uses user input to calculate running sum
    # Its the proper way to do it but makes it difficult to test
    # while true
    #   puts("Array is [#{array.join(',')}]")
    #   puts("Running sum is #{running_sum}")
    #   puts("Enter new value to add to list or type exit to leave")
    #   value = gets&.chomp
    #   if value != 'exit'
    #     running_sum += value.to_i
    #     array << value.to_i
    #   elsif value == 'exit'
    #     exit
    #   end
    # end
  end
end
