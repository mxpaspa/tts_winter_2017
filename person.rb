class Person

  attr_accessor :first_name, :last_name, :gender, :age

  def initialize (first_name, last_name, gender, age, subject)
    @first_name = first_name
    @last_name = last_name
    @gender = gender
    @age = age
    @subject = subject
  end

  def introduction
    puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}"
  end
end


class Student < Person

  def learning
    puts "#{@first_name} is learning!"
  end
end

class Teacher < Person

  def teaches
    puts "#{@first_name} teaches #{@subject}"
  end
end

s=Student.new('Lukas', 'Barry', 'male', 30, 'algebra')
s.introduction

person = Person.new('Max', 'Paspa', 'male', 27, 'biology')
person.introduction

teacher = Teacher.new('Gail', 'Jones', 'female', 58, 'chemistry')
teacher.teaches
