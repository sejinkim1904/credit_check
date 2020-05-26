class CreditCard
  attr_reader :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def last_four
    @card_number[-4..-1]
  end

  def is_valid?
    sum_digits(@card_number).reduce(:+) % 10 == 0
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
end
