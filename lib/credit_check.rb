require 'pry'

card_number = "5541808923795240"

# Your Luhn Algorithm Here
def luhn(card)
  card_split = split_to_integer(card)
  multiplied_digits = multiply_digits(card_split)
  summed_digits = sum_digits(multiplied_digits)
# binding.pry

end

def split_to_integer(card)
  card.chars.map do |digit|
    digit.to_i
  end
end

def multiply_digits(digits)
  digits.map.with_index do |digit, index|
    if index == 0 || index % 2 == 0
      digit * 2
    else
      digit
    end
  end
end

def sum_digits(digits)
  digits.map do |digit|
    binding.pry
    if digit.length == 2

    end
  end
end
luhn(card_number)
# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
