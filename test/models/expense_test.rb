require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "expense fields must be positive" do
    expense = Expense.new(expenseid: "Transportation", userid: "elena", expensetype: "variable", frequency: "monthly", projvalue: 40.00, actvalue: 10.50, percent: 20, month: 3, year: 2016)
    # test invalid with negative number
    expense.actvalue = -1
    assert expense.invalid?
    # test invalid with 0
    expense.actvalue = 0
    assert product.invalid?
    # test valid with positive number
    expense.actvalue = 1
    assert expense.valid?
  end

  test "year must be positive" do
    expense = Expense.new(expenseid: "Transportation", userid: "elena", expensetype: "variable", frequency: "monthly", projvalue: 40.00, actvalue: 10.50, percent: 20, month: 3, year: -1)

    assert expense.invalid?

    expense.year = 100
    assert expense.invalid?

    expense.year = 1500
    assert expense.invalid?

    expense.year = 3050
    assert expense.invalid?

    expense.year = 2016
    assert expense.valid?
  end
end
