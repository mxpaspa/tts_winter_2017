class Word < String

  def very_long?(string)
    if string.length >= 10
      puts 'true'
    else
      puts 'false'
    end
  end
end

w = Word.new('this is a very long string')
puts w.very_long?('this is a very long string')

s= Word.new
puts s.very_long?('not long')

puts w.length
puts w.class
