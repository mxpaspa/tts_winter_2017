require 'pp'

=begin
Create a program that will shuffle a deck of cards and assign a number of players two cards.
Make sure to ask the user for the number of players who are playing and that there are no duplicate cards in the deck!

Objects:
Dealer
Deck of cards
# of players
Stack of chips
Methods:
deal
betting
winner
=end

@players = {}
@player_bets = {}
dealer_cards_list = []
ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
face_cards =["J", "Q", "K", "A"]
suits = ["hearts", "spades", "clubs", "diamonds"]
deck = ranks.product(suits)
shuffled_deck = deck.shuffle
rank_list = []
ranks = []
puts "how many players?"
number_of_players = gets.chomp.to_i



# dealer_cards = shuffled_deck.shift
# puts " dealer cards are #{dealer_cards}"
# 1.upto(number_of_players) do |n|
#   player_cards = shuffled_deck.shift(1)
#   puts "player #{n} cards are: #{player_cards}"
# end


#1st_draw
dealer_cards = shuffled_deck.shift
dealer_cards_list.push(dealer_cards)
puts " dealer cards are #{dealer_cards}"
1.upto(number_of_players) do |n,key,value|
  player_cards = shuffled_deck.shift(2)
  @players.store("player #{n}",player_cards)
end
pp @players


# @players.each do |key,val|
#   if @players[key].sum > 21
#     puts "bust"


# #place first bets
# 1.upto(number_of_players) do |n,key,value|
#   puts "Player #{n}, how much would you like to bet?"
#   bet = gets.chomp.to_i
#   @player_bets.store("player #{n}",bet)
# end
# pp @player_bets

# take more cards
1.upto(number_of_players) do |n,key,value|
  puts "Player #{n} would you like another card?"
  answer = gets.chomp
    if answer == 'yes'
      player_cards = shuffled_deck.shift(1)
      @players["player #{n}"] << player_cards.flatten
    end
end
puts "second draw:"
pp @players

#shows dealer cards to determine winner
dealer_cards = shuffled_deck.shift
dealer_cards_list.push(dealer_cards)

#strips the dealer cards of the suits
dealer_cards_list.each do |ind|
  ind.select{ |s| s.include?("J")}.each{ |s| s.replace( "10" ) }
  ind.select{ |s| s.include?("Q")}.each{ |s| s.replace( "10" ) }
  ind.select{ |s| s.include?("K")}.each{ |s| s.replace( "10" ) }
  ind.select{ |s| s.include?("A")}.each{ |s| s.replace( "10" ) }
end
  puts "dealer cards (face cards converted)are:"
pp dealer_cards_list

#strips the suits
@players.each do |key,val|
  @players[key].map!(&:shift)
end
puts " player cards stripped of suits:"
pp @players

#after stripped suits, converts face cards to 10
@players.each do |key,val|
  @players[key].select{ |s| s.include?("J")}.each{ |s| s.replace( "10" ) }
  @players[key].select{ |s| s.include?("Q")}.each{ |s| s.replace( "10" ) }
  @players[key].select{ |s| s.include?("K")}.each{ |s| s.replace( "10" ) }
  @players[key].select{ |s| s.include?("A")}.each{ |s| s.replace( "10" ) }
end
puts "player face cards converted to 10:"
pp @players


#convert player hands to integers
@players.each do |key,val|
  @players[key].map!(&:to_i)
end
pp @players

@players.each do |n,key|
  if key.sum > 21
    puts "player#{n} has lost"
  end
end
