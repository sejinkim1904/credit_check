require 'minitest'
require 'minitest/pride'
require './lib/credit_card'
require 'pry'

class CreditCardTest < Minitest::Test
  def setup
    @credit_card = CreditCard.new("5541808923795240", 15000)
  end

  def test_it_exists
    assert_instance_of CreditCard, @credit_card
  end
end
