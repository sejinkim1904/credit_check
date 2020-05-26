require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'
require 'pry'

class CreditCardTest < Minitest::Test
  def setup
    @credit_card = CreditCard.new("5541808923795240", 15000)
    @sketch_card = CreditCard.new("5541801923795240", 8000000)
  end

  def test_it_exists
    assert_instance_of CreditCard, @credit_card
  end

  def test_it_has_attributes
    assert_equal "5541808923795240", @credit_card.card_number
    assert_equal 15000, @credit_card.limit
  end

  def test_it_can_get_last_four
    assert_equal "5240", @credit_card.last_four
  end

  def test_it_can_check_if_a_card_is_valid
    assert_equal true, @credit_card.is_valid?
    assert_equal false, @sketch_card.is_valid?
  end

  def test_it_can_split_to_integers
    result = [5, 5, 4, 1, 8, 0, 8, 9, 2, 3, 7, 9, 5, 2, 4, 0]
    assert_equal result, @credit_card.split_to_integer(@credit_card.card_number)
  end

  def test_it_can_multiply_digits
    result = [10, 5, 8, 1, 16, 0, 16, 9, 4, 3, 14, 9, 10, 2, 8, 0]
    assert_equal result, @credit_card.multiply_digits(@credit_card.card_number)
  end
end
