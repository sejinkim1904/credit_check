require './lib/credit_card'

puts "Enter a credit card number you wish to validate:"

card = CreditCard.new(gets.chomp)

if card.is_valid?
  puts "The number #{card.card_number} is valid!"
else
  puts "The number #{card.card_number} is invalid!"
end
