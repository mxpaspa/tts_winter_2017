ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
suits = ["hearts", "spades", "clubs", "diamonds"]
deck = ranks.product(suits)
deck.shuffle

puts "how many players?"
number_of_players = gets.chomp.to_i


1.upto(number_of_players) do |n|
  player_cards = deck.shift(2)
  puts "player #{n} cards are: #{player_cards}"

end


=begin

deck = [["2","spades"],["3","hearts"],["6","diamonds"],["10","clubs"],["8","hearts"],["9","clubs"]]
(number_of_players).times do |x|
  x=deck.shift(2)
  print "#{number_of_players}player cards are #{x}"
end

#deck.each_slice(2).take(1) {|a| print a}

puts "how many players are there?"
number_of_players = gets.chomp

=end
