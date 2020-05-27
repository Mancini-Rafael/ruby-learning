class SumOrProduct
  def choose_option
    puts("Enter the number")
    number = gets.chomp.to_i
    puts("Enter option")
    puts("1 - Sum      |     2 - Product")
    option = gets.chomp.to_i
    result = run(option, number)
    bye(option, result)
  end

  def run(option, number)
    acc = case option
          when 1
            (1..number).inject(0) { |sum, n| sum + n  }
          when 2
            (1..number).inject(1) { |sum, n| sum * n  }
          else
            puts("Invalid option")
            raise
          end
  end

  def bye(option, result)
    case option
    when 1
      puts("Sum is #{result}")
    when 2
      puts("Product is #{result}")
    end
  end
end