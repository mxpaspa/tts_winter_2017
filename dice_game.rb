=begin
Create a program that will roll a dice twice and output the numbers.
=end


puts "first roll"
num_1 = Random.rand(1..6)
puts "you rolled a #{num_1} on your first try - roll again?"
answer = gets.chomp

if answer == 'yes'
num_2 = Random.rand(1..6)
puts "you rolled a #{num_2} on your second try"
end

puts "do you want to know what your total was?"
total_answer = gets.chomp

if total_answer == 'yes'
puts "you rolled a #{num_1 + num_2}"
end
