=begin
Build a student testing app.
The app should have a class of Student and
the student should "login" with their email and password before they can take a test.
The user should be able to take the test and receive feedback on answers.
Their score should be saved and printed at the end of the test.
If they score under 60 they should be prompted to take the test again.
=end


class Student

  attr_accessor :first_name, :last_name, :password, :username

  def initialize (first_name, last_name, password, username)
    @first_name = first_name
    @last_name = last_name
    @password = password
    @username = username
  end


  def create_user

    puts "please enter your first name"
    @first_name = gets.chomp
    puts "please enter your last name"
    @last_name = gets.chomp
    puts "please create a password"
    @password = gets.chomp
    puts "please create a username"
    @username = gets.chomp

    user_info = [first_name,last_name,password]
    user_list = Hash.new
    user_list[username] = user_info
    puts user_list
  end

  def login
    puts 'enter your password to login'
    login_prompt = gets.chomp

    if login_prompt.eql?(@password)
      puts "you are logged in"
    end
  end


  def take_test
    scores = []
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
  end
end


new_user = Student.new(@first_name,@last_name,@password,@username)
new_user.create_user
new_user.login
new_user.take_test
