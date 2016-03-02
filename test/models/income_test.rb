require 'test_helper'

class IncomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "income fields must be positive" do
    income = Income.new(userid: "elena", income: "money", incometype: "salary", value: 100.00, frequency: "monthly", day_rec: 10, month: 3, year: 2016)
    # test invalid with negative number
    income.value = -1
    assert income.invalid?
    # test invalid with 0
    # income.value = 0
    # assert income.invalid?
    # test valid with positive number
    income.value = 1
    assert income.valid?
  end

  test "year must be positive" do
    income = Income.new(userid: "elena", income: "money", incometype: "salary", value: 100.00, frequency: "monthly", day_rec: 10, month: 3, year: -1)

    assert income.invalid?

    income.year = 100
    assert income.invalid?

    income.year = 1500
    assert income.invalid?

    income.year = 3050
    assert income.invalid?

    income.year = 2016
    assert income.valid?
  end
end
