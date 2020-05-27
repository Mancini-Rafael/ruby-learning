class MultiplicationTable
  def print_tables
    (1..12).each do |num|
      print_multiplication_table(num)
    end
  end

  def print_multiplication_table(n)
    puts("---------------------")
    puts("Multiplication Table for #{n}")
    (0..10).each do |mul|
      puts("#{n} * #{mul} = #{n*mul}")
    end
  end
end 

