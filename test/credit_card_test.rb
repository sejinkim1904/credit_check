require 'minitest'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def setup
    @valid_card = "5541808923795240"
    @invalid_card = "5541801923795240"
  end
end
