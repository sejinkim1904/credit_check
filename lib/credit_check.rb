card_number = "5541808923795240"

def luhn(card)
  if sum_digits(card).reduce(:+) % 10 == 0
    print "The number #{card} is valid!"
  else
    print "The number #{card} is invalid!"
  end
end

def split_to_integer(card)
  card.chars.map do |digit|
    digit.to_i
  end
end

def multiply_digits(card)
  split_to_integer(card).map.with_index do |digit, index|
    if index == 0 || index % 2 == 0
      digit * 2
    else
      digit
    end
  end
end

def sum_digits(card)
  multiply_digits(card).map do |digit|
    if digit.to_s.length == 2
      digit.to_s.chars.map { |num| num.to_i }.reduce(:+)
    else
      digit
    end
  end
end

luhn(card_number)
