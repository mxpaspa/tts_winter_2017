# players = []

@players = {}

# 10.times.each { |x| @players["players #{x}"] = value}
# print players
#
# players.push("players #{x}")

# 4.times.each { |key,value| @players.store("player","cards")}
# puts @players

number_of_players = 4

1.upto(number_of_players) do |n,key,value|
  @players.store("player #{n}","cards")
end

puts @players
