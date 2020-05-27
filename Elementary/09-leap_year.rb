class LeapYears
  def show_leap_years(start_year=nil)
    puts("The next 10 leap years are:")
    current_year = start_year || Time.now.year.to_i
    number_of_leap_years = 0
    year_gap = 0
    while number_of_leap_years < 10
      year = current_year + year_gap
      if is_leap_year(year)
        print("#{year} |")
        number_of_leap_years += 1
      end
      year_gap += 1
    end
  end
  def is_leap_year(year)
    # A Leap Years is any year that can be exactly divided by 4 or 400 
    # and cannot be exactly divided by 100
    ((year % 400 == 0) || (year % 4 == 0)) && !(year % 100 == 0)
  end
end
