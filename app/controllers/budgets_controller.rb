class BudgetsController < ApplicationController

  def display
    @incomes = Income.all
    @expenses = Expense.all
    @bills = Bill.all
  end

end
