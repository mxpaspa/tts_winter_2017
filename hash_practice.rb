
puts "please enter your first name"
first_name = gets.chomp
puts "please enter your last name"
last_name = gets.chomp
puts "please create a password"
password = gets.chomp
puts "please create a username"
username = gets.chomp

user_info = [first_name,last_name,password]
user_list = Hash.new
user_list[username] = user_info
scores = []

puts 'enter your password to login'
login_prompt = gets.chomp

if login_prompt.eql?(password)
  puts "you are logged in"
end





puts 'name the capital'


puts 'what is the capital of Australia?'
answer1 = gets.chomp
if answer1.eql?('Canberra')
  scores.push(1)
else scores.push(0)
end

puts 'what is the capital of Germany'
answer2 = gets.chomp
if answer2.eql?('Berlin')
  scores.push(1)
else scores.push(0)
end

puts 'what is the capital of Sweden'
answer3 = gets.chomp
if answer3.eql?('Stockholm')
  scores.push(1)
else scores.push(0)
end

print scores

correct_answers = scores.count(1)
puts "you had #{correct_answers} correct"
puts "out of #{scores.size}"
final_score = correct_answers.to_f / scores.size.to_f
puts "your final score was #{final_score.to_f}"

=begin
users = Hash.new {|hsh,key, value1, value2, value3| hsh[key] = [value1, value2, value3]}
users['user_1'].push('max','paspa','password')
puts users['user_1']

def login

  if @users.first[2].any?(@password) == true
    puts 'you are logged in'
  end

end

login
=end


=begin
myHash = Hash.new
myHash['custom_fields'] = myArray

users['paspam'] = ['max','paspa', 'password']
if (defined?(var)).nil?
=end
