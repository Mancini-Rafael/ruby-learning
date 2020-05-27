module MultiSummer
  def sum_with_for_loop(array)
    sum = 0
    for value in array do
      sum += value
    end
    sum
  end
  
  def sum_with_while_loop(array)
    sum = 0
    index = 0
    while !array[index].nil?
      sum += array[index]
      index += 1
    end
    sum
  end
  
  def sum_with_recursion_loop(array)
    if array.length == 1
      array[0]
    else
      array[0] + sum_with_recursion_loop(array[1..-1])
    end
  end
end
