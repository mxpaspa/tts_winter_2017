my_array = [2,3,4,5,6]

def my_square_equations(array)
  squared_array = array.map { |n| n ** 2}
  puts squared_array  
end


my_square_equations(my_array)
