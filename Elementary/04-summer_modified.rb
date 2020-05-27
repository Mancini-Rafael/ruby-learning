class SummerModified
  def loop_way
    puts("Enter the number")
    number = gets.chomp.to_i
    acc1 = 0
    (1..number).each do |num|
      acc1 += num if (num % 3 == 0 || num % 5 == 0)
    end
    puts("Sum is #{acc1}")
  end

  def inject_way
    puts("Enter the number")
    number = gets.chomp.to_i
    acc2 = (1..number).inject(0) { |sum, n| (n % 3 == 0 || n % 5 == 0) ? (sum + n) : sum  }
    puts("Sum is #{acc2}")
  end
end