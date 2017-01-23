=begin
Create a program that will shuffle a deck of cards and assign a number of players two cards.
Make sure to ask the user for the number of players who are playing and that there are no duplicate cards in the deck!
=end

ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
suits = ["hearts", "spades", "clubs", "diamonds"]
deck = ranks.product(suits)
shuffled_deck = deck.shuffle

puts "how many players?"
number_of_players = gets.chomp.to_i


1.upto(number_of_players) do |n|
  player_cards = shuffled_deck.shift(2)
  puts "player #{n} cards are: #{player_cards}"

end


=begin

deck << [cards,suits].transpose.shuffle

@deck << [@cards,@suits].transpose.shuffle[0..3]

hands = array.each_slice(hand_size).take(player_count)

hands.each_with_index do |hand, n|
  puts "player #{n + 1} cards are: #{hand}"
end



if number_of_players > 1


@deck << [@cards,@suits].transpose.shuffle[0..3]
print @deck

5.downto(1){ |n| puts "We are at number #{n}." }

1.times do
  @deck << @cards.shuffle[0..3]
  @deck << @suits.shuffle[0..3]
end
print @deck


@deck << [@cards,@suits].transpose.shuffle[0..3]
print @deck


player_1_cards = @deck.each do |x,y| @deck.rassoc(1)
  puts "player 1 cards are #{x} : #{y}"
end


player_1_cards = @deck.each do |x,y|
  puts "player cards are #{x} : #{y}"
end



player_2_cards = @deck.each do |x|
  puts "player 2 cards are #{x}"
end


player_2_cards = deck[2].each do |x,y|
  puts "player two cards are #{x} : #{y}"
end



4.times do
  deck.push(cards.shuffle.to_s)
end
puts deck



deck = deck.each {|x| suits.insert(rand(0..52), x)}
puts deck


a.insert(rand(0..a.length), value)
deck = [[card,suit]]
deck.each { |x| puts "#{x}\n" }
=end
