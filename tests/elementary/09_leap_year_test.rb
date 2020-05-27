require_relative "../test_helper"
require_relative '../../Elementary/09-leap_year'

describe "When calculating leap years" do
  it "should show the next 10 leap years" do
    assert_output(/2020 |2024 |2028 |2032 |2036 |2040 |2044 |2048 |2052 |2056/) { LeapYears.new.show_leap_years(2020) }
  end
end