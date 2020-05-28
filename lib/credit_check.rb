require './lib/credit_card'

def credit_check
  puts "Enter a credit card number you wish to validate:"

  card = CreditCard.new(gets.chomp)

  if card.is_valid?
    puts "The number #{card.card_number} is valid!"
  else
    puts "The number #{card.card_number} is invalid!"
  end

  check_another
end

def check_another
  puts "Would you like to check another card? (Y/N)"

  answer = gets.chomp.capitalize

  if answer == "Y"
    credit_check
  end
end

credit_check
