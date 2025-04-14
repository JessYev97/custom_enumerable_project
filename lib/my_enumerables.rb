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

def my_all? 
  verification_array = []
  each do |element|
    if yield(element) == true 
      verification_array << true 
    else 
      verification_array << false 
    end 
  end 
  if !verification_array.include?(false) 
    return(true)
  else 
      return(false)
  end
end 

def my_any? 
  verification_array = [] 
  each do |element|
    if yield(element) == true 
      verification_array << 1 
    else 
      verification_array << 0 
    end 
  end 
  if verification_array.include?(1)
    return(true) 
  else 
    return(false)
  end 
end 

def my_none?
  verification_array = []
  each do |element| 
    if yield(element) == true 
      verification_array << 1 
    else 
      verification_array << 0 
    end 
  end 
  if verification_array.include?(1) 
    return(false)
  else 
    return(true) 
  end 
end 

end
