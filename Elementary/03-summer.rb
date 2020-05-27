class Summer
  def loop_way
    puts("Enter the number")
    number = gets.chomp.to_i
    acc1 = 0
    (1..number).each do |num|
      acc1 += num
    end
    puts("Sum is #{acc1}")
  end

  def range_sum_way
    puts("Enter the number")
    number = gets.chomp.to_i
    acc2 = (1..number).sum
    puts("Sum is #{acc2}")
  end

  def inject_way
    puts("Enter the number")
    number = gets.chomp.to_i
    acc3 = (1..number).inject(0) { |sum, n| sum + n }
    puts("Sum is #{acc3}")
  end

  def reduce_way
    puts("Enter the number")
    number = gets.chomp.to_i
    acc4 = (1..number).reduce(:+)
    puts("Sum is #{acc4}")
  end
end