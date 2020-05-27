class FindPrimes
  def find_all_up_to_number
    puts("Enter number")
    number = gets.chomp.to_i
    puts("The primes up until #{number} are")
    primes = find_primes_eratosthenes(number)
    display_primes(primes, number)
  end

  def find_primes_eratosthenes(n)
    # Google Sieve of Eratosthenes
    primes = Array.new(n+1, true) # Assume every number is prime at first
    current = 2 # Start at first prime number
    while (current * current <= n) do # No need to look further than the square root of n
      # The sieve works by removing the prime property from every multiple of a prime
      # If after all runs prime[current] is not changed, then it is a prime
      if (primes[current])
        # Update every multiple
        (current*current..n+1).step(current) do |i|
          primes[i] = false
        end
      end
      current += 1
    end
    primes
  end

  def display_primes(primes, n)
    # Print all prime numbers 
    (2..n).each do |num|
      print("#{num} | ") if primes[num]
    end
  end
end
