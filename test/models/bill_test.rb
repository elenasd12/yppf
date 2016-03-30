require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "bill attributes must not be empty" do
      bill = bills(:one)
      assert bill.valid?
  end

  test "bill dates must be positive" do
     bill = bills(:one)
    assert bill.valid?
   # assert_equal "day, month, and year must be greater than or equal to 1"
  end

  test "bill year must be four digits" do
    bill = bills(:one)
    assert bill.valid?
    
   # assert_equal "year must be four digits"
  end

end
