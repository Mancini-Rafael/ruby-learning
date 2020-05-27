class Greeter
  def greet
    puts("Please enter your name")
    name = get_name
    puts("Hello #{name}")
  end

  def get_name
    name = gets
  end
end
