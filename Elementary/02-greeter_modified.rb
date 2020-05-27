class GreeterModified
  def greet
    puts("Please enter your name")
    name = get_name
    if name.include?("Alice") || name.include?("Bob")
      puts("Hello #{name}")
    else
      puts("I can't greet this name")
    end
  end

  def get_name
    name = gets
  end
end