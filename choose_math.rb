=begin
Create a program that will take two numbers and then gives the user a choice
of what kind of arithmetic they'd like done to the two numbers.
Include at least: add, subtract, multiply and divide. This time you really gotta use methods!
=end

puts "number 1:"
number_1 = gets.chomp.to_i

puts "number 2:"
number_2 = gets.chomp.to_i


puts "what type of artithmetic would you like to apply?"
answer = gets.chomp

def addition(number_1,number_2)
  sum = number_1 + number_2
  puts sum
end

def multiplication(number_1,number_2)
  output = number_1 * number_2
  puts output
end

def division (number_1,number_2)
  output = number_1 % number_2
  puts output
end


if answer == "addition"
  addition(number_1,number_2)

elsif answer == "multiplication"
  multiplication(number_1,number_2)

elsif answer == "division"
  division(number_1,number_2)

end
