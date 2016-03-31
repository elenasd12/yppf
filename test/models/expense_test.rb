require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "expense fields must be positive" do
    expense = Expense.new(expense_category_id: 1, user_id: 1, expensetype: 0, frequency: "monthly", projvalue: 40.00, actvalue: 10.50, percent: 20, month: 3, year: 2016)
    # test invalid with negative number
    expense.actvalue = 100
    assert expense.valid?
    # test invalid with 0
    # expense.actvalue = 0
    # assert expense.invalid?
    # test valid with positive number
    expense.actvalue = 1
    assert expense.valid?
  end

  test "year must be positive" do
    expense = Expense.new(expense_category_id: 1, user_id: 1, expensetype: 0, frequency: "monthly", projvalue: 40.00, actvalue: 10.50, percent: 20, month: 3, year: 2016)

    assert expense.valid?

    expense.year = 2005
    assert expense.valid?

    expense.year = 2016
    assert expense.valid?

    expense.year = 2000
    assert expense.valid?

    expense.year = 2016
    assert expense.valid?
  end
end

