class AlternatingSeries
  def calculate
    count = 0
    (1..1_000_000).each do |number|
      count += ( ((-1)^(number+1))/(2*number-1) *4 )
    end
    puts(count)
  end
end

