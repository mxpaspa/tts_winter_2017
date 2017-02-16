require 'csv'

# CSV.foreach('Desktop/test.csv') do |row|
#   puts row.inspect
# end
CSV.open('Desktop/test.csv', 'r') do |data|
  p data
end
