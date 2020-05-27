module OddIndexDisplayer
  def find_odd_index_elements(arr=nil)
    array = arr || Array.new(10) { rand(1..100) }
    odd_elements = array.select.with_index { |_, index| !(index % 2 == 0) }.join(',')
    puts("The odd index elements are #{odd_elements}")
  end
end
