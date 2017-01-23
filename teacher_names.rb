=begin
"Students & Teachers" - write a program that has two arrays,
one of student names and one of teacher names.
Ask the user for their name, and greet them according to their role
(if they're a teacher, it says one thing, if they're a student, it says something else)
=end

students = ["jim", "bob", "sally"]
teachers = ["mrs. jones", "mrs. sharpe", "mrs. ray"]

puts "what's your name ?"
answer = gets.chomp

if answer.include?(students.to_s)
  puts "you are a student"

elsif
  puts "you are a teacher"

end
