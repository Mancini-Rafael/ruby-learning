class GuessingGame
  def initialize(number_to_guess=nil)
    @number_to_guess = number_to_guess || rand(1..1000)
    @guess_count = 0
    @prev_guess = nil
    @state = 'play'
  end
  
  def play
    while @state == 'play'
      puts("Guess the number")
      number_guessed = gets.chomp.to_i
      send_feedback_of_guess(number_guessed)
    end
  end

  def send_feedback_of_guess(number_guessed)
    # Only increase counter when guess is different number
    @guess_count += 1 if number_guessed != @prev_guess
    if number_guessed == @number_to_guess
      puts("You got it, the number is #{@number_to_guess} and it took you #{@guess_count} tries!")
      @state = 'over'
    elsif number_guessed > @number_to_guess
      puts("Not quite, you're too high")
      @prev_guess = number_guessed
    else
      puts("Not quite, you're too low")
      @prev_guess = number_guessed
    end
  end
end
