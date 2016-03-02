require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "bill attributes must not be empty" do
      bill = Bill.new
      assert bill.invalid?
      assert bill.errors[:expenseid].any?
      assert bill.errors[:day_month].any?
      assert bill.errors[:month].any?
      assert bill.errors[:year].any?
  end

  test "bill dates must be positive" do
    bill = Bill.new(day_month: -1, month: -1, year: 0)
    assert bill.invalid?
    assert_equal ["day, month, and year must be greater than or equal to 1"],bill.errors[:year]
   # assert_equal "day, month, and year must be greater than or equal to 1"
  end

  test "bill year must be four digits" do
    bill = Bill.new(year: 1)
    assert bill.invalid?
    assert_equal ["year must be four digits"],bill.errors[:year]
   # assert_equal "year must be four digits"
  end
  
end
