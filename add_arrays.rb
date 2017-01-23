=begin
answer_array.inject(0){|sum,x| sum + x }
a.inject(:+)

Adding from random arrays - write a program that takes two arrays of random numbers,
the length of which is decided by the user,
 and adds the corresponding items in each array
 (i.e., the first number in the first array will be added to the first item in the second array).
 Remember to create methods to keep your code DRY!

=end


array_1 = []
array_2 = []

=begin
def user_length_for_first_array
  puts "how many numbers do you want to generate?"
  user_length = gets.chomp.to_i-1
  array_1 = user_length.times.map{Random.rand(8) }
  puts array_1
end

user_length_for_first_array
=end

puts "how many numbers do you want in your first list ?"
user_length = gets.chomp.to_i

user_length.times.each do
  array_1.push(i=Random.rand(1..5))
end
puts array_1
puts "-----"

puts "how many numbers do you want in your first list ?"
user_length_2 = gets.chomp.to_i

user_length_2.times.each do
  array_2.push(i=Random.rand(1..5))
end
puts array_2

puts "here is the sum of your two lists:"
puts array_1.inject(:+) + array_2.inject(:+)


=begin
until array_1.length == 5
  i=Random.rand(1..5)
  array_1.push(i)
  puts array_1

end
=end
