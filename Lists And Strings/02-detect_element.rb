module DetectElement
  def detect_element_default(arr=nil, number)
    array = arr || Array.new(10) { rand(1..100) }
    puts("Enter number you want to see if exists")
    puts("This element #{array.select{ |e| e == number}.empty? ? 'does not' : 'does'} exist")
    puts("The array was #{array.join(',')}")
  end

  def detect_element_custom(arr=nil, number)
    array = arr || Array.new(10) { rand(1..100) }
    number_exists = false 
    array.each do |el|
      if el == number
        number_exists = true
        break
      end
    end
    puts("This element #{number_exists ? 'does' : 'does not'} exist")
    puts("The array was #{array.join(',')}")
  end
end