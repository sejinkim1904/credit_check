require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def test_it_knows_when_a_credit_card_is_valid
    card_number = "5541808923795240"
    assert_equal "The number #{card_number} is valid!"
  end
end
