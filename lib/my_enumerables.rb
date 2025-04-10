module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    return enum_for(:my_each) unless block_given?
    each do |element| 
      yield(element) 
    end 
    self 
  end 

  def my_each_with_index
    index = -1 
    each do |element| 
      index += 1 
      yield(element, index) 
      self 
    end 
  end

def my_select
  matching_arr = []
  each do |element| 
    if yield(element) == true 
      matching_arr << element 
    end 
  end 
  matching_arr
end 

end
