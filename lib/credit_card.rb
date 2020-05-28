class CreditCard
  attr_reader :card_number, :limit

  def initialize(card_number, limit = 0)
    @card_number = card_number
    @limit = limit
  end

  def last_four
    @card_number[-4..-1]
  end

  def is_valid?
    number = @card_number[0..-2]
    check_digit = @card_number[-1]
    sum_digit = sum_digits(number.reverse)

    (sum_digit.sum + check_digit.to_i) % 10 == 0
  end

  def check_sum_digit
    number = @card_number[0..-2]
    sum_digits(number.reverse).sum * 9 % 10
  end

  def split_to_integer(card)
    card.chars.map do |digit|
      digit.to_i
    end
  end

  def multiply_digits(card)
    split_to_integer(card).map.with_index do |digit, index|
      if index % 2 == 0
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
